; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_xcopy.c_target_xcopy_gen_naa_ieee.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_xcopy.c_target_xcopy_gen_naa_ieee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_device*, i8*)* @target_xcopy_gen_naa_ieee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_xcopy_gen_naa_ieee(%struct.se_device* %0, i8* %1) #0 {
  %3 = alloca %struct.se_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.se_device* %0, %struct.se_device** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i8*, i8** %4, align 8
  %7 = load i32, i32* %5, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %5, align 4
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds i8, i8* %6, i64 %9
  store i8 96, i8* %10, align 1
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %5, align 4
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds i8, i8* %11, i64 %14
  store i8 1, i8* %15, align 1
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %5, align 4
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  store i8 64, i8* %20, align 1
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  store i8 80, i8* %24, align 1
  %25 = load %struct.se_device*, %struct.se_device** %3, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = call i32 @spc_parse_naa_6h_vendor_specific(%struct.se_device* %25, i8* %29)
  ret i32 0
}

declare dso_local i32 @spc_parse_naa_6h_vendor_specific(%struct.se_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
