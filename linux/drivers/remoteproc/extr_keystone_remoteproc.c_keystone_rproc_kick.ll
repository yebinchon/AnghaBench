; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_keystone_remoteproc.c_keystone_rproc_kick.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_keystone_remoteproc.c_keystone_rproc_kick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { %struct.keystone_rproc* }
%struct.keystone_rproc = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rproc*, i32)* @keystone_rproc_kick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keystone_rproc_kick(%struct.rproc* %0, i32 %1) #0 {
  %3 = alloca %struct.rproc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.keystone_rproc*, align 8
  store %struct.rproc* %0, %struct.rproc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rproc*, %struct.rproc** %3, align 8
  %7 = getelementptr inbounds %struct.rproc, %struct.rproc* %6, i32 0, i32 0
  %8 = load %struct.keystone_rproc*, %struct.keystone_rproc** %7, align 8
  store %struct.keystone_rproc* %8, %struct.keystone_rproc** %5, align 8
  %9 = load %struct.keystone_rproc*, %struct.keystone_rproc** %5, align 8
  %10 = getelementptr inbounds %struct.keystone_rproc, %struct.keystone_rproc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %22

17:                                               ; preds = %2
  %18 = load %struct.keystone_rproc*, %struct.keystone_rproc** %5, align 8
  %19 = getelementptr inbounds %struct.keystone_rproc, %struct.keystone_rproc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @gpio_set_value(i64 %20, i32 1)
  br label %22

22:                                               ; preds = %17, %16
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @gpio_set_value(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
