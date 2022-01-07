; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_parameters.c_iscsi_dump_sess_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_parameters.c_iscsi_dump_sess_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_sess_ops = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [19 x i8] c"InitiatorName: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"InitiatorAlias: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"TargetName: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"TargetAlias: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"TargetPortalGroupTag: %hu\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"MaxConnections: %hu\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"InitialR2T: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"ImmediateData: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"MaxBurstLength: %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"FirstBurstLength: %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"DefaultTime2Wait: %hu\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"DefaultTime2Retain: %hu\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"MaxOutstandingR2T: %hu\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"DataPDUInOrder: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"DataSequenceInOrder: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"ErrorRecoveryLevel: %hu\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"SessionType: %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"Discovery\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsi_dump_sess_ops(%struct.iscsi_sess_ops* %0) #0 {
  %2 = alloca %struct.iscsi_sess_ops*, align 8
  store %struct.iscsi_sess_ops* %0, %struct.iscsi_sess_ops** %2, align 8
  %3 = load %struct.iscsi_sess_ops*, %struct.iscsi_sess_ops** %2, align 8
  %4 = getelementptr inbounds %struct.iscsi_sess_ops, %struct.iscsi_sess_ops* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %5)
  %7 = load %struct.iscsi_sess_ops*, %struct.iscsi_sess_ops** %2, align 8
  %8 = getelementptr inbounds %struct.iscsi_sess_ops, %struct.iscsi_sess_ops* %7, i32 0, i32 1
  %9 = load i8*, i8** %8, align 8
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %9)
  %11 = load %struct.iscsi_sess_ops*, %struct.iscsi_sess_ops** %2, align 8
  %12 = getelementptr inbounds %struct.iscsi_sess_ops, %struct.iscsi_sess_ops* %11, i32 0, i32 2
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %13)
  %15 = load %struct.iscsi_sess_ops*, %struct.iscsi_sess_ops** %2, align 8
  %16 = getelementptr inbounds %struct.iscsi_sess_ops, %struct.iscsi_sess_ops* %15, i32 0, i32 3
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %17)
  %19 = load %struct.iscsi_sess_ops*, %struct.iscsi_sess_ops** %2, align 8
  %20 = getelementptr inbounds %struct.iscsi_sess_ops, %struct.iscsi_sess_ops* %19, i32 0, i32 4
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %21)
  %23 = load %struct.iscsi_sess_ops*, %struct.iscsi_sess_ops** %2, align 8
  %24 = getelementptr inbounds %struct.iscsi_sess_ops, %struct.iscsi_sess_ops* %23, i32 0, i32 5
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %25)
  %27 = load %struct.iscsi_sess_ops*, %struct.iscsi_sess_ops** %2, align 8
  %28 = getelementptr inbounds %struct.iscsi_sess_ops, %struct.iscsi_sess_ops* %27, i32 0, i32 16
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)
  %33 = call i32 @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %32)
  %34 = load %struct.iscsi_sess_ops*, %struct.iscsi_sess_ops** %2, align 8
  %35 = getelementptr inbounds %struct.iscsi_sess_ops, %struct.iscsi_sess_ops* %34, i32 0, i32 15
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)
  %40 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* %39)
  %41 = load %struct.iscsi_sess_ops*, %struct.iscsi_sess_ops** %2, align 8
  %42 = getelementptr inbounds %struct.iscsi_sess_ops, %struct.iscsi_sess_ops* %41, i32 0, i32 6
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8* %43)
  %45 = load %struct.iscsi_sess_ops*, %struct.iscsi_sess_ops** %2, align 8
  %46 = getelementptr inbounds %struct.iscsi_sess_ops, %struct.iscsi_sess_ops* %45, i32 0, i32 7
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i8* %47)
  %49 = load %struct.iscsi_sess_ops*, %struct.iscsi_sess_ops** %2, align 8
  %50 = getelementptr inbounds %struct.iscsi_sess_ops, %struct.iscsi_sess_ops* %49, i32 0, i32 8
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i8* %51)
  %53 = load %struct.iscsi_sess_ops*, %struct.iscsi_sess_ops** %2, align 8
  %54 = getelementptr inbounds %struct.iscsi_sess_ops, %struct.iscsi_sess_ops* %53, i32 0, i32 9
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i8* %55)
  %57 = load %struct.iscsi_sess_ops*, %struct.iscsi_sess_ops** %2, align 8
  %58 = getelementptr inbounds %struct.iscsi_sess_ops, %struct.iscsi_sess_ops* %57, i32 0, i32 10
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i8* %59)
  %61 = load %struct.iscsi_sess_ops*, %struct.iscsi_sess_ops** %2, align 8
  %62 = getelementptr inbounds %struct.iscsi_sess_ops, %struct.iscsi_sess_ops* %61, i32 0, i32 14
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)
  %67 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i8* %66)
  %68 = load %struct.iscsi_sess_ops*, %struct.iscsi_sess_ops** %2, align 8
  %69 = getelementptr inbounds %struct.iscsi_sess_ops, %struct.iscsi_sess_ops* %68, i32 0, i32 13
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)
  %74 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i8* %73)
  %75 = load %struct.iscsi_sess_ops*, %struct.iscsi_sess_ops** %2, align 8
  %76 = getelementptr inbounds %struct.iscsi_sess_ops, %struct.iscsi_sess_ops* %75, i32 0, i32 11
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i8* %77)
  %79 = load %struct.iscsi_sess_ops*, %struct.iscsi_sess_ops** %2, align 8
  %80 = getelementptr inbounds %struct.iscsi_sess_ops, %struct.iscsi_sess_ops* %79, i32 0, i32 12
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0)
  %85 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i8* %84)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
