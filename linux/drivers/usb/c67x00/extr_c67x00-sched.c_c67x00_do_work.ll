; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/c67x00/extr_c67x00-sched.c_c67x00_do_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/c67x00/extr_c67x00-sched.c_c67x00_do_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c67x00_hcd = type { i64, i64, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c67x00_hcd*)* @c67x00_do_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c67x00_do_work(%struct.c67x00_hcd* %0) #0 {
  %2 = alloca %struct.c67x00_hcd*, align 8
  store %struct.c67x00_hcd* %0, %struct.c67x00_hcd** %2, align 8
  %3 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %2, align 8
  %4 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %3, i32 0, i32 2
  %5 = call i32 @spin_lock(i32* %4)
  %6 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %2, align 8
  %7 = call i32 @c67x00_all_tds_processed(%struct.c67x00_hcd* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %60

10:                                               ; preds = %1
  %11 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %2, align 8
  %12 = call i32 @c67x00_check_td_list(%struct.c67x00_hcd* %11)
  %13 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %2, align 8
  %14 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %13, i32 0, i32 6
  %15 = call i32 @complete(i32* %14)
  %16 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %2, align 8
  %17 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %16, i32 0, i32 3
  %18 = call i32 @list_empty(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %10
  br label %60

21:                                               ; preds = %10
  %22 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %2, align 8
  %23 = call i64 @c67x00_get_current_frame_number(%struct.c67x00_hcd* %22)
  %24 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %2, align 8
  %25 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %2, align 8
  %27 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %2, align 8
  %30 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  br label %60

34:                                               ; preds = %21
  %35 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %2, align 8
  %36 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %2, align 8
  %39 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %2, align 8
  %41 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %34
  %45 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %2, align 8
  %46 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @c67x00_ll_hpi_disable_sofeop(i32 %47)
  br label %60

49:                                               ; preds = %34
  %50 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %2, align 8
  %51 = call i32 @c67x00_fill_frame(%struct.c67x00_hcd* %50)
  %52 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %2, align 8
  %53 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %52, i32 0, i32 3
  %54 = call i32 @list_empty(i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %49
  %57 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %2, align 8
  %58 = call i32 @c67x00_send_frame(%struct.c67x00_hcd* %57)
  br label %59

59:                                               ; preds = %56, %49
  br label %60

60:                                               ; preds = %59, %44, %33, %20, %9
  %61 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %2, align 8
  %62 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %61, i32 0, i32 2
  %63 = call i32 @spin_unlock(i32* %62)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @c67x00_all_tds_processed(%struct.c67x00_hcd*) #1

declare dso_local i32 @c67x00_check_td_list(%struct.c67x00_hcd*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @c67x00_get_current_frame_number(%struct.c67x00_hcd*) #1

declare dso_local i32 @c67x00_ll_hpi_disable_sofeop(i32) #1

declare dso_local i32 @c67x00_fill_frame(%struct.c67x00_hcd*) #1

declare dso_local i32 @c67x00_send_frame(%struct.c67x00_hcd*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
