; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_ffs_data_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_ffs_data_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffs_data = type { i32, i32, i32, i64, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ffs_data*)* @ffs_data_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffs_data_clear(%struct.ffs_data* %0) #0 {
  %2 = alloca %struct.ffs_data*, align 8
  store %struct.ffs_data* %0, %struct.ffs_data** %2, align 8
  %3 = call i32 (...) @ENTER()
  %4 = load %struct.ffs_data*, %struct.ffs_data** %2, align 8
  %5 = call i32 @ffs_closed(%struct.ffs_data* %4)
  %6 = load %struct.ffs_data*, %struct.ffs_data** %2, align 8
  %7 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.ffs_data*, %struct.ffs_data** %2, align 8
  %11 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.ffs_data*, %struct.ffs_data** %2, align 8
  %16 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ffs_data*, %struct.ffs_data** %2, align 8
  %19 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ffs_epfiles_destroy(i64 %17, i32 %20)
  br label %22

22:                                               ; preds = %14, %1
  %23 = load %struct.ffs_data*, %struct.ffs_data** %2, align 8
  %24 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.ffs_data*, %struct.ffs_data** %2, align 8
  %29 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @eventfd_ctx_put(i64 %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.ffs_data*, %struct.ffs_data** %2, align 8
  %34 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @kfree(i32 %35)
  %37 = load %struct.ffs_data*, %struct.ffs_data** %2, align 8
  %38 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @kfree(i32 %39)
  %41 = load %struct.ffs_data*, %struct.ffs_data** %2, align 8
  %42 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @kfree(i32 %43)
  ret void
}

declare dso_local i32 @ENTER(...) #1

declare dso_local i32 @ffs_closed(%struct.ffs_data*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ffs_epfiles_destroy(i64, i32) #1

declare dso_local i32 @eventfd_ctx_put(i64) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
