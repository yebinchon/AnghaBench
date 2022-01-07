; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_mdt_loader.c_qcom_mdt_load_no_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_mdt_loader.c_qcom_mdt_load_no_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.firmware = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qcom_mdt_load_no_init(%struct.device* %0, %struct.firmware* %1, i8* %2, i32 %3, i8* %4, i32 %5, i64 %6, i32* %7) #0 {
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.firmware*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  store %struct.device* %0, %struct.device** %9, align 8
  store %struct.firmware* %1, %struct.firmware** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  store i32* %7, i32** %16, align 8
  %17 = load %struct.device*, %struct.device** %9, align 8
  %18 = load %struct.firmware*, %struct.firmware** %10, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = load i32, i32* %12, align 4
  %21 = load i8*, i8** %13, align 8
  %22 = load i32, i32* %14, align 4
  %23 = load i64, i64* %15, align 8
  %24 = load i32*, i32** %16, align 8
  %25 = call i32 @__qcom_mdt_load(%struct.device* %17, %struct.firmware* %18, i8* %19, i32 %20, i8* %21, i32 %22, i64 %23, i32* %24, i32 0)
  ret i32 %25
}

declare dso_local i32 @__qcom_mdt_load(%struct.device*, %struct.firmware*, i8*, i32, i8*, i32, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
