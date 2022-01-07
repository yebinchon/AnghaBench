; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_parameters.c_iscsi_dump_conn_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_parameters.c_iscsi_dump_conn_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn_ops = type { i8*, i64, i64 }

@.str = private unnamed_addr constant [18 x i8] c"HeaderDigest: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"CRC32C\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"DataDigest: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"MaxRecvDataSegmentLength: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsi_dump_conn_ops(%struct.iscsi_conn_ops* %0) #0 {
  %2 = alloca %struct.iscsi_conn_ops*, align 8
  store %struct.iscsi_conn_ops* %0, %struct.iscsi_conn_ops** %2, align 8
  %3 = load %struct.iscsi_conn_ops*, %struct.iscsi_conn_ops** %2, align 8
  %4 = getelementptr inbounds %struct.iscsi_conn_ops, %struct.iscsi_conn_ops* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  %7 = zext i1 %6 to i64
  %8 = select i1 %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %9 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = load %struct.iscsi_conn_ops*, %struct.iscsi_conn_ops** %2, align 8
  %11 = getelementptr inbounds %struct.iscsi_conn_ops, %struct.iscsi_conn_ops* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %15)
  %17 = load %struct.iscsi_conn_ops*, %struct.iscsi_conn_ops** %2, align 8
  %18 = getelementptr inbounds %struct.iscsi_conn_ops, %struct.iscsi_conn_ops* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %19)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
