; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_lightnvm.c_nvm_dev_attr_show_ppaf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_lightnvm.c_nvm_dev_attr_show_ppaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_addrf_12 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"0x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvm_addrf_12*, i8*)* @nvm_dev_attr_show_ppaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvm_dev_attr_show_ppaf(%struct.nvm_addrf_12* %0, i8* %1) #0 {
  %3 = alloca %struct.nvm_addrf_12*, align 8
  %4 = alloca i8*, align 8
  store %struct.nvm_addrf_12* %0, %struct.nvm_addrf_12** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load i32, i32* @PAGE_SIZE, align 4
  %7 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %3, align 8
  %8 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %7, i32 0, i32 11
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %3, align 8
  %11 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %10, i32 0, i32 10
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %3, align 8
  %14 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %13, i32 0, i32 9
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %3, align 8
  %17 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %3, align 8
  %20 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %3, align 8
  %23 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %3, align 8
  %26 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %3, align 8
  %29 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %3, align 8
  %32 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %3, align 8
  %35 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %3, align 8
  %38 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %3, align 8
  %41 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @scnprintf(i8* %5, i32 %6, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12, i32 %15, i32 %18, i32 %21, i32 %24, i32 %27, i32 %30, i32 %33, i32 %36, i32 %39, i32 %42)
  ret i32 %43
}

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
