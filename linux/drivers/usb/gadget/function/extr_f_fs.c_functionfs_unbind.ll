; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_functionfs_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_functionfs_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffs_data = type { i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }

@FFS_FL_BOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ffs_data*)* @functionfs_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @functionfs_unbind(%struct.ffs_data* %0) #0 {
  %2 = alloca %struct.ffs_data*, align 8
  store %struct.ffs_data* %0, %struct.ffs_data** %2, align 8
  %3 = call i32 (...) @ENTER()
  %4 = load %struct.ffs_data*, %struct.ffs_data** %2, align 8
  %5 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @WARN_ON(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %32, label %12

12:                                               ; preds = %1
  %13 = load %struct.ffs_data*, %struct.ffs_data** %2, align 8
  %14 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ffs_data*, %struct.ffs_data** %2, align 8
  %19 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @usb_ep_free_request(i32 %17, i32* %20)
  %22 = load %struct.ffs_data*, %struct.ffs_data** %2, align 8
  %23 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %22, i32 0, i32 2
  store i32* null, i32** %23, align 8
  %24 = load %struct.ffs_data*, %struct.ffs_data** %2, align 8
  %25 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %24, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %25, align 8
  %26 = load i32, i32* @FFS_FL_BOUND, align 4
  %27 = load %struct.ffs_data*, %struct.ffs_data** %2, align 8
  %28 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %27, i32 0, i32 0
  %29 = call i32 @clear_bit(i32 %26, i32* %28)
  %30 = load %struct.ffs_data*, %struct.ffs_data** %2, align 8
  %31 = call i32 @ffs_data_put(%struct.ffs_data* %30)
  br label %32

32:                                               ; preds = %12, %1
  ret void
}

declare dso_local i32 @ENTER(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @usb_ep_free_request(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ffs_data_put(%struct.ffs_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
