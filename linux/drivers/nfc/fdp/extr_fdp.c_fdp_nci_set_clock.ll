; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/fdp/extr_fdp.c_fdp_nci_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/fdp/extr_fdp.c_fdp_nci_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nci_dev*, i8, i32)* @fdp_nci_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdp_nci_set_clock(%struct.nci_dev* %0, i8 signext %1, i32 %2) #0 {
  %4 = alloca %struct.nci_dev*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [9 x i8], align 1
  store %struct.nci_dev* %0, %struct.nci_dev** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  store i32 13560, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = mul nsw i32 24, %12
  %14 = load i32, i32* %6, align 4
  %15 = sdiv i32 %13, %14
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = mul nsw i32 24, %16
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = mul nsw i32 %18, %19
  %21 = sub nsw i32 %17, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = mul nsw i32 32768, %22
  %24 = load i32, i32* %6, align 4
  %25 = sdiv i32 %23, %24
  store i32 %25, i32* %9, align 4
  %26 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 1
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 2
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 3
  store i8 16, i8* %29, align 1
  %30 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 4
  store i8 4, i8* %30, align 1
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, 255
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 5
  store i8 %33, i8* %34, align 1
  %35 = load i32, i32* %9, align 4
  %36 = ashr i32 %35, 8
  %37 = and i32 %36, 255
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 6
  store i8 %38, i8* %39, align 1
  %40 = load i32, i32* %8, align 4
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 7
  store i8 %41, i8* %42, align 1
  %43 = load i8, i8* %5, align 1
  %44 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 8
  store i8 %43, i8* %44, align 1
  %45 = load %struct.nci_dev*, %struct.nci_dev** %4, align 8
  %46 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 0
  %47 = call i32 @fdp_nci_set_production_data(%struct.nci_dev* %45, i32 9, i8* %46)
  ret i32 %47
}

declare dso_local i32 @fdp_nci_set_production_data(%struct.nci_dev*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
