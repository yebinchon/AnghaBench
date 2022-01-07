; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_ffs_data_closed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_ffs_data_closed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffs_data = type { i64, i8*, i32, i32*, i32, i64 }

@FFS_DEACTIVATED = common dso_local global i8* null, align 8
@FFS_SETUP_PENDING = common dso_local global i64 0, align 8
@FFS_CLOSING = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ffs_data*)* @ffs_data_closed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffs_data_closed(%struct.ffs_data* %0) #0 {
  %2 = alloca %struct.ffs_data*, align 8
  store %struct.ffs_data* %0, %struct.ffs_data** %2, align 8
  %3 = call i32 (...) @ENTER()
  %4 = load %struct.ffs_data*, %struct.ffs_data** %2, align 8
  %5 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %4, i32 0, i32 2
  %6 = call i64 @atomic_dec_and_test(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %48

8:                                                ; preds = %1
  %9 = load %struct.ffs_data*, %struct.ffs_data** %2, align 8
  %10 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %8
  %14 = load i8*, i8** @FFS_DEACTIVATED, align 8
  %15 = load %struct.ffs_data*, %struct.ffs_data** %2, align 8
  %16 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load %struct.ffs_data*, %struct.ffs_data** %2, align 8
  %18 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %13
  %22 = load %struct.ffs_data*, %struct.ffs_data** %2, align 8
  %23 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.ffs_data*, %struct.ffs_data** %2, align 8
  %26 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ffs_epfiles_destroy(i32* %24, i32 %27)
  %29 = load %struct.ffs_data*, %struct.ffs_data** %2, align 8
  %30 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %29, i32 0, i32 3
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %21, %13
  %32 = load %struct.ffs_data*, %struct.ffs_data** %2, align 8
  %33 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @FFS_SETUP_PENDING, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.ffs_data*, %struct.ffs_data** %2, align 8
  %39 = call i32 @__ffs_ep0_stall(%struct.ffs_data* %38)
  br label %40

40:                                               ; preds = %37, %31
  br label %47

41:                                               ; preds = %8
  %42 = load i8*, i8** @FFS_CLOSING, align 8
  %43 = load %struct.ffs_data*, %struct.ffs_data** %2, align 8
  %44 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load %struct.ffs_data*, %struct.ffs_data** %2, align 8
  %46 = call i32 @ffs_data_reset(%struct.ffs_data* %45)
  br label %47

47:                                               ; preds = %41, %40
  br label %48

48:                                               ; preds = %47, %1
  %49 = load %struct.ffs_data*, %struct.ffs_data** %2, align 8
  %50 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %49, i32 0, i32 2
  %51 = call i64 @atomic_read(i32* %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load i8*, i8** @FFS_CLOSING, align 8
  %55 = load %struct.ffs_data*, %struct.ffs_data** %2, align 8
  %56 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load %struct.ffs_data*, %struct.ffs_data** %2, align 8
  %58 = call i32 @ffs_data_reset(%struct.ffs_data* %57)
  br label %59

59:                                               ; preds = %53, %48
  %60 = load %struct.ffs_data*, %struct.ffs_data** %2, align 8
  %61 = call i32 @ffs_data_put(%struct.ffs_data* %60)
  ret void
}

declare dso_local i32 @ENTER(...) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @ffs_epfiles_destroy(i32*, i32) #1

declare dso_local i32 @__ffs_ep0_stall(%struct.ffs_data*) #1

declare dso_local i32 @ffs_data_reset(%struct.ffs_data*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @ffs_data_put(%struct.ffs_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
