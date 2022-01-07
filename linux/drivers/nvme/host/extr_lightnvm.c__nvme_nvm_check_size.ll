; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_lightnvm.c__nvme_nvm_check_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_lightnvm.c__nvme_nvm_check_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NVME_IDENTIFY_DATA_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @_nvme_nvm_check_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_nvme_nvm_check_size() #0 {
  %1 = call i32 @BUILD_BUG_ON(i32 1)
  %2 = call i32 @BUILD_BUG_ON(i32 1)
  %3 = call i32 @BUILD_BUG_ON(i32 1)
  %4 = call i32 @BUILD_BUG_ON(i32 1)
  %5 = call i32 @BUILD_BUG_ON(i32 1)
  %6 = call i32 @BUILD_BUG_ON(i32 1)
  %7 = call i32 @BUILD_BUG_ON(i32 1)
  %8 = load i32, i32* @NVME_IDENTIFY_DATA_SIZE, align 4
  %9 = sext i32 %8 to i64
  %10 = icmp ne i64 4, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUILD_BUG_ON(i32 %11)
  %13 = call i32 @BUILD_BUG_ON(i32 1)
  %14 = call i32 @BUILD_BUG_ON(i32 1)
  %15 = load i32, i32* @NVME_IDENTIFY_DATA_SIZE, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ne i64 4, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUILD_BUG_ON(i32 %18)
  %20 = call i32 @BUILD_BUG_ON(i32 1)
  %21 = call i32 @BUILD_BUG_ON(i32 0)
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
