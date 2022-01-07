; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_ism.h___ism_read_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_ism.h___ism_read_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ism_dev = type { i32 }
%struct.zpci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ism_dev*, i8*, i64, i64)* @__ism_read_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ism_read_cmd(%struct.ism_dev* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.ism_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.zpci_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.ism_dev* %0, %struct.ism_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.ism_dev*, %struct.ism_dev** %5, align 8
  %12 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.zpci_dev* @to_zpci(i32 %13)
  store %struct.zpci_dev* %14, %struct.zpci_dev** %9, align 8
  %15 = load %struct.zpci_dev*, %struct.zpci_dev** %9, align 8
  %16 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ZPCI_CREATE_REQ(i32 %17, i32 2, i32 8)
  store i32 %18, i32* %10, align 4
  br label %19

19:                                               ; preds = %22, %4
  %20 = load i64, i64* %8, align 8
  %21 = icmp ugt i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @__zpci_load(i8* %23, i32 %24, i64 %25)
  %27 = load i64, i64* %7, align 8
  %28 = add i64 %27, 8
  store i64 %28, i64* %7, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr i8, i8* %29, i64 8
  store i8* %30, i8** %6, align 8
  %31 = load i64, i64* %8, align 8
  %32 = sub i64 %31, 8
  store i64 %32, i64* %8, align 8
  br label %19

33:                                               ; preds = %19
  ret void
}

declare dso_local %struct.zpci_dev* @to_zpci(i32) #1

declare dso_local i32 @ZPCI_CREATE_REQ(i32, i32, i32) #1

declare dso_local i32 @__zpci_load(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
