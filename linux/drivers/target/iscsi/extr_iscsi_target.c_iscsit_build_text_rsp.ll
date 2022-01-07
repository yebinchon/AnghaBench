; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_build_text_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_build_text_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i32, i32, i32, i32, i64 }
%struct.iscsi_conn = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.iscsi_text_rsp = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32 }

@ISCSI_FLAG_CMD_FINAL = common dso_local global i32 0, align 4
@ISCSI_FLAG_TEXT_CONTINUE = common dso_local global i32 0, align 4
@ISCSI_OP_TEXT_RSP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [97 x i8] c"Built Text Response: ITT: 0x%08x, TTT: 0x%08x, StatSN: 0x%08x, Length: %u, CID: %hu F: %d C: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_build_text_rsp(%struct.iscsi_cmd* %0, %struct.iscsi_conn* %1, %struct.iscsi_text_rsp* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_cmd*, align 8
  %7 = alloca %struct.iscsi_conn*, align 8
  %8 = alloca %struct.iscsi_text_rsp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %6, align 8
  store %struct.iscsi_conn* %1, %struct.iscsi_conn** %7, align 8
  store %struct.iscsi_text_rsp* %2, %struct.iscsi_text_rsp** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 1, i32* %12, align 4
  %13 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %16 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @iscsit_build_sendtargets_response(%struct.iscsi_cmd* %13, i32 %14, i32 %17, i32* %12)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %5, align 4
  br label %145

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* @ISCSI_FLAG_CMD_FINAL, align 4
  %28 = load %struct.iscsi_text_rsp*, %struct.iscsi_text_rsp** %8, align 8
  %29 = getelementptr inbounds %struct.iscsi_text_rsp, %struct.iscsi_text_rsp* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  br label %51

30:                                               ; preds = %23
  %31 = load i32, i32* @ISCSI_FLAG_TEXT_CONTINUE, align 4
  %32 = load %struct.iscsi_text_rsp*, %struct.iscsi_text_rsp** %8, align 8
  %33 = getelementptr inbounds %struct.iscsi_text_rsp, %struct.iscsi_text_rsp* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %36 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %40 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %50

43:                                               ; preds = %30
  %44 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %45 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = call i32 @session_get_next_ttt(%struct.TYPE_3__* %46)
  %48 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %49 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %43, %30
  br label %51

51:                                               ; preds = %50, %26
  %52 = load i32, i32* @ISCSI_OP_TEXT_RSP, align 4
  %53 = load %struct.iscsi_text_rsp*, %struct.iscsi_text_rsp** %8, align 8
  %54 = getelementptr inbounds %struct.iscsi_text_rsp, %struct.iscsi_text_rsp* %53, i32 0, i32 7
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sub nsw i32 0, %55
  %57 = and i32 %56, 3
  store i32 %57, i32* %11, align 4
  %58 = load %struct.iscsi_text_rsp*, %struct.iscsi_text_rsp** %8, align 8
  %59 = getelementptr inbounds %struct.iscsi_text_rsp, %struct.iscsi_text_rsp* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @hton24(i32 %60, i32 %61)
  %63 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %64 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.iscsi_text_rsp*, %struct.iscsi_text_rsp** %8, align 8
  %67 = getelementptr inbounds %struct.iscsi_text_rsp, %struct.iscsi_text_rsp* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 8
  %68 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %69 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @cpu_to_be32(i32 %70)
  %72 = load %struct.iscsi_text_rsp*, %struct.iscsi_text_rsp** %8, align 8
  %73 = getelementptr inbounds %struct.iscsi_text_rsp, %struct.iscsi_text_rsp* %72, i32 0, i32 4
  store i8* %71, i8** %73, align 8
  %74 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %75 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  %78 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %79 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %78, i32 0, i32 2
  store i32 %76, i32* %79, align 8
  %80 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %81 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i8* @cpu_to_be32(i32 %82)
  %84 = load %struct.iscsi_text_rsp*, %struct.iscsi_text_rsp** %8, align 8
  %85 = getelementptr inbounds %struct.iscsi_text_rsp, %struct.iscsi_text_rsp* %84, i32 0, i32 3
  store i8* %83, i8** %85, align 8
  %86 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %87 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %88 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %87, i32 0, i32 1
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = call i32 @iscsit_increment_maxcmdsn(%struct.iscsi_cmd* %86, %struct.TYPE_3__* %89)
  %91 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %92 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %91, i32 0, i32 4
  store i64 0, i64* %92, align 8
  %93 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %94 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %93, i32 0, i32 1
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @cpu_to_be32(i32 %97)
  %99 = load %struct.iscsi_text_rsp*, %struct.iscsi_text_rsp** %8, align 8
  %100 = getelementptr inbounds %struct.iscsi_text_rsp, %struct.iscsi_text_rsp* %99, i32 0, i32 2
  store i8* %98, i8** %100, align 8
  %101 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %102 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %101, i32 0, i32 1
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = call i64 @atomic_read(i32* %104)
  %106 = trunc i64 %105 to i32
  %107 = call i8* @cpu_to_be32(i32 %106)
  %108 = load %struct.iscsi_text_rsp*, %struct.iscsi_text_rsp** %8, align 8
  %109 = getelementptr inbounds %struct.iscsi_text_rsp, %struct.iscsi_text_rsp* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  %110 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %111 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %114 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %117 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %121 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.iscsi_text_rsp*, %struct.iscsi_text_rsp** %8, align 8
  %124 = getelementptr inbounds %struct.iscsi_text_rsp, %struct.iscsi_text_rsp* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @ISCSI_FLAG_CMD_FINAL, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  %132 = load %struct.iscsi_text_rsp*, %struct.iscsi_text_rsp** %8, align 8
  %133 = getelementptr inbounds %struct.iscsi_text_rsp, %struct.iscsi_text_rsp* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @ISCSI_FLAG_TEXT_CONTINUE, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  %138 = xor i1 %137, true
  %139 = xor i1 %138, true
  %140 = zext i1 %139 to i32
  %141 = call i32 @pr_debug(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str, i64 0, i64 0), i32 %112, i32 %115, i32 %118, i32 %119, i32 %122, i32 %131, i32 %140)
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %142, %143
  store i32 %144, i32* %5, align 4
  br label %145

145:                                              ; preds = %51, %21
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local i32 @iscsit_build_sendtargets_response(%struct.iscsi_cmd*, i32, i32, i32*) #1

declare dso_local i32 @session_get_next_ttt(%struct.TYPE_3__*) #1

declare dso_local i32 @hton24(i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @iscsit_increment_maxcmdsn(%struct.iscsi_cmd*, %struct.TYPE_3__*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
