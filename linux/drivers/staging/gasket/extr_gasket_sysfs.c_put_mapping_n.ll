; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_sysfs.c_put_mapping_n.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_sysfs.c_put_mapping_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_sysfs_mapping = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gasket_sysfs_mapping*, i32)* @put_mapping_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_mapping_n(%struct.gasket_sysfs_mapping* %0, i32 %1) #0 {
  %3 = alloca %struct.gasket_sysfs_mapping*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gasket_sysfs_mapping* %0, %struct.gasket_sysfs_mapping** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %13, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load %struct.gasket_sysfs_mapping*, %struct.gasket_sysfs_mapping** %3, align 8
  %12 = call i32 @put_mapping(%struct.gasket_sysfs_mapping* %11)
  br label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %5, align 4
  br label %6

16:                                               ; preds = %6
  ret void
}

declare dso_local i32 @put_mapping(%struct.gasket_sysfs_mapping*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
