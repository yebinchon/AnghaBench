; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_setup_text_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_setup_text_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.iscsi_cmd = type { i32, i32, i32*, i32, i8*, i8*, i32, i32, i32 }
%struct.iscsi_text = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [85 x i8] c"Unable to accept text parameter length: %ugreater than MaxXmitDataSegmentLength %u.\0A\00", align 1
@ISCSI_REASON_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@ISCSI_FLAG_CMD_FINAL = common dso_local global i32 0, align 4
@ISCSI_FLAG_TEXT_CONTINUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Multi sequence text commands currently not supported\0A\00", align 1
@ISCSI_REASON_CMD_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [77 x i8] c"Got Text Request: ITT: 0x%08x, CmdSN: 0x%08x, ExpStatSN: 0x%08x, Length: %u\0A\00", align 1
@ISCSI_OP_TEXT = common dso_local global i32 0, align 4
@ISTATE_SEND_TEXTRSP = common dso_local global i32 0, align 4
@ISCSI_OP_IMMEDIATE = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_setup_text_cmd(%struct.iscsi_conn* %0, %struct.iscsi_cmd* %1, %struct.iscsi_text* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.iscsi_cmd*, align 8
  %7 = alloca %struct.iscsi_text*, align 8
  %8 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %5, align 8
  store %struct.iscsi_cmd* %1, %struct.iscsi_cmd** %6, align 8
  store %struct.iscsi_text* %2, %struct.iscsi_text** %7, align 8
  %9 = load %struct.iscsi_text*, %struct.iscsi_text** %7, align 8
  %10 = getelementptr inbounds %struct.iscsi_text, %struct.iscsi_text* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ntoh24(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %15 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %13, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %23 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %26)
  %28 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %29 = load i32, i32* @ISCSI_REASON_PROTOCOL_ERROR, align 4
  %30 = load %struct.iscsi_text*, %struct.iscsi_text** %7, align 8
  %31 = bitcast %struct.iscsi_text* %30 to i8*
  %32 = call i32 @iscsit_reject_cmd(%struct.iscsi_cmd* %28, i32 %29, i8* %31)
  store i32 %32, i32* %4, align 4
  br label %114

33:                                               ; preds = %3
  %34 = load %struct.iscsi_text*, %struct.iscsi_text** %7, align 8
  %35 = getelementptr inbounds %struct.iscsi_text, %struct.iscsi_text* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ISCSI_FLAG_CMD_FINAL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load %struct.iscsi_text*, %struct.iscsi_text** %7, align 8
  %42 = getelementptr inbounds %struct.iscsi_text, %struct.iscsi_text* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ISCSI_FLAG_TEXT_CONTINUE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %40, %33
  %48 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %50 = load i32, i32* @ISCSI_REASON_CMD_NOT_SUPPORTED, align 4
  %51 = load %struct.iscsi_text*, %struct.iscsi_text** %7, align 8
  %52 = bitcast %struct.iscsi_text* %51 to i8*
  %53 = call i32 @iscsit_reject_cmd(%struct.iscsi_cmd* %49, i32 %50, i8* %52)
  store i32 %53, i32* %4, align 4
  br label %114

54:                                               ; preds = %40
  %55 = load %struct.iscsi_text*, %struct.iscsi_text** %7, align 8
  %56 = getelementptr inbounds %struct.iscsi_text, %struct.iscsi_text* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.iscsi_text*, %struct.iscsi_text** %7, align 8
  %59 = getelementptr inbounds %struct.iscsi_text, %struct.iscsi_text* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.iscsi_text*, %struct.iscsi_text** %7, align 8
  %62 = getelementptr inbounds %struct.iscsi_text, %struct.iscsi_text* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @pr_debug(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %60, i32 %63, i32 %64)
  %66 = load i32, i32* @ISCSI_OP_TEXT, align 4
  %67 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %68 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %67, i32 0, i32 8
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @ISTATE_SEND_TEXTRSP, align 4
  %70 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %71 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %70, i32 0, i32 7
  store i32 %69, i32* %71, align 4
  %72 = load %struct.iscsi_text*, %struct.iscsi_text** %7, align 8
  %73 = getelementptr inbounds %struct.iscsi_text, %struct.iscsi_text* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @ISCSI_OP_IMMEDIATE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 1, i32 0
  %80 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %81 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.iscsi_text*, %struct.iscsi_text** %7, align 8
  %83 = getelementptr inbounds %struct.iscsi_text, %struct.iscsi_text* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %86 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %85, i32 0, i32 6
  store i32 %84, i32* %86, align 8
  %87 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %88 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i32 %84, i32* %90, align 4
  %91 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %92 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %91, i32 0, i32 1
  store i32 -1, i32* %92, align 4
  %93 = load %struct.iscsi_text*, %struct.iscsi_text** %7, align 8
  %94 = getelementptr inbounds %struct.iscsi_text, %struct.iscsi_text* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @be32_to_cpu(i32 %95)
  %97 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %98 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %97, i32 0, i32 5
  store i8* %96, i8** %98, align 8
  %99 = load %struct.iscsi_text*, %struct.iscsi_text** %7, align 8
  %100 = getelementptr inbounds %struct.iscsi_text, %struct.iscsi_text* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @be32_to_cpu(i32 %101)
  %103 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %104 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %103, i32 0, i32 4
  store i8* %102, i8** %104, align 8
  %105 = load i32, i32* @DMA_NONE, align 4
  %106 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %107 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 8
  %108 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %109 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @kfree(i32* %110)
  %112 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %113 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %112, i32 0, i32 2
  store i32* null, i32** %113, align 8
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %54, %47, %20
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @ntoh24(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @iscsit_reject_cmd(%struct.iscsi_cmd*, i32, i8*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
