; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_build_nopin_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_build_nopin_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i32, i32, i32, i32 }
%struct.iscsi_conn = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.iscsi_nopin = type { i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32 }

@ISCSI_OP_NOOP_IN = common dso_local global i32 0, align 4
@ISCSI_FLAG_CMD_FINAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"Built NOPIN %s Response ITT: 0x%08x, TTT: 0x%08x, StatSN: 0x%08x, Length %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Solicited\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Unsolicited\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsit_build_nopin_rsp(%struct.iscsi_cmd* %0, %struct.iscsi_conn* %1, %struct.iscsi_nopin* %2, i32 %3) #0 {
  %5 = alloca %struct.iscsi_cmd*, align 8
  %6 = alloca %struct.iscsi_conn*, align 8
  %7 = alloca %struct.iscsi_nopin*, align 8
  %8 = alloca i32, align 4
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %5, align 8
  store %struct.iscsi_conn* %1, %struct.iscsi_conn** %6, align 8
  store %struct.iscsi_nopin* %2, %struct.iscsi_nopin** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @ISCSI_OP_NOOP_IN, align 4
  %10 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %7, align 8
  %11 = getelementptr inbounds %struct.iscsi_nopin, %struct.iscsi_nopin* %10, i32 0, i32 8
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @ISCSI_FLAG_CMD_FINAL, align 4
  %13 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %7, align 8
  %14 = getelementptr inbounds %struct.iscsi_nopin, %struct.iscsi_nopin* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %7, align 8
  %18 = getelementptr inbounds %struct.iscsi_nopin, %struct.iscsi_nopin* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %21 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @hton24(i32 %19, i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %7, align 8
  %28 = getelementptr inbounds %struct.iscsi_nopin, %struct.iscsi_nopin* %27, i32 0, i32 5
  %29 = call i32 @put_unaligned_le64(i32 -1, i32* %28)
  br label %30

30:                                               ; preds = %26, %4
  %31 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %32 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %7, align 8
  %35 = getelementptr inbounds %struct.iscsi_nopin, %struct.iscsi_nopin* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %37 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @cpu_to_be32(i32 %38)
  %40 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %7, align 8
  %41 = getelementptr inbounds %struct.iscsi_nopin, %struct.iscsi_nopin* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %30
  %45 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %46 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  br label %53

49:                                               ; preds = %30
  %50 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %51 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  br label %53

53:                                               ; preds = %49, %44
  %54 = phi i32 [ %47, %44 ], [ %52, %49 ]
  %55 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %56 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %58 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @cpu_to_be32(i32 %59)
  %61 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %7, align 8
  %62 = getelementptr inbounds %struct.iscsi_nopin, %struct.iscsi_nopin* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %53
  %66 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %67 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %68 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = call i32 @iscsit_increment_maxcmdsn(%struct.iscsi_cmd* %66, %struct.TYPE_2__* %69)
  br label %71

71:                                               ; preds = %65, %53
  %72 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %73 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @cpu_to_be32(i32 %76)
  %78 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %7, align 8
  %79 = getelementptr inbounds %struct.iscsi_nopin, %struct.iscsi_nopin* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  %80 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %81 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = call i64 @atomic_read(i32* %83)
  %85 = trunc i64 %84 to i32
  %86 = call i8* @cpu_to_be32(i32 %85)
  %87 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %7, align 8
  %88 = getelementptr inbounds %struct.iscsi_nopin, %struct.iscsi_nopin* %87, i32 0, i32 0
  store i8* %86, i8** %88, align 8
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)
  %93 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %94 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %97 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %100 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %103 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @pr_debug(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i8* %92, i32 %95, i32 %98, i32 %101, i32 %104)
  ret void
}

declare dso_local i32 @hton24(i32, i32) #1

declare dso_local i32 @put_unaligned_le64(i32, i32*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @iscsit_increment_maxcmdsn(%struct.iscsi_cmd*, %struct.TYPE_2__*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @pr_debug(i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
