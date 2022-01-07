; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_alienware-wmi.c_show_amplifier_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_alienware-wmi.c_show_amplifier_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.wmax_basic_args = type { i32 }

@WMAX_METHOD_AMPLIFIER_CABLE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"[unconnected] connected unknown\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"unconnected [connected] unknown\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"alienware-wmi: unknown amplifier cable status: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"unconnected connected [unknown]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_amplifier_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_amplifier_status(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wmax_basic_args, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = bitcast %struct.wmax_basic_args* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = load i32, i32* @WMAX_METHOD_AMPLIFIER_CABLE, align 4
  %13 = call i32 @alienware_wmax_command(%struct.wmax_basic_args* %10, i32 %12, i32* %9)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i64 @ACPI_SUCCESS(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = call i32 @scnprintf(i8* %21, i32 %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %4, align 4
  br label %39

24:                                               ; preds = %17
  %25 = load i32, i32* %9, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = call i32 @scnprintf(i8* %28, i32 %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 %30, i32* %4, align 4
  br label %39

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31
  br label %33

33:                                               ; preds = %32, %3
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = call i32 @scnprintf(i8* %36, i32 %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %33, %27, %20
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @alienware_wmax_command(%struct.wmax_basic_args*, i32, i32*) #2

declare dso_local i64 @ACPI_SUCCESS(i32) #2

declare dso_local i32 @scnprintf(i8*, i32, i8*) #2

declare dso_local i32 @pr_err(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
