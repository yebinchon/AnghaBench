; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_ibmphp_hpc.c_hpc_writecmdtoindex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_ibmphp_hpc.c_hpc_writecmdtoindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WPG_1ST_BUS_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"hpc_writecmdtoindex - Error invalid cmd[%x]\0A\00", align 1
@HPC_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @hpc_writecmdtoindex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpc_writecmdtoindex(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %15 [
    i32 135, label %7
    i32 137, label %7
    i32 133, label %7
    i32 134, label %7
    i32 136, label %7
    i32 143, label %7
    i32 144, label %7
    i32 129, label %8
    i32 128, label %8
    i32 132, label %8
    i32 131, label %8
    i32 130, label %8
    i32 140, label %10
    i32 139, label %10
    i32 138, label %10
    i32 142, label %10
    i32 141, label %10
  ]

7:                                                ; preds = %2, %2, %2, %2, %2, %2, %2
  store i32 15, i32* %5, align 4
  br label %19

8:                                                ; preds = %2, %2, %2, %2, %2
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* %5, align 4
  br label %19

10:                                               ; preds = %2, %2, %2, %2, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @WPG_1ST_BUS_INDEX, align 4
  %13 = add nsw i32 %11, %12
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %5, align 4
  br label %19

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @HPC_ERROR, align 4
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %15, %10, %8, %7
  %20 = load i32, i32* %5, align 4
  ret i32 %20
}

declare dso_local i32 @err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
