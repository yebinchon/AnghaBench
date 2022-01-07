; ModuleID = '/home/carl/AnghaBench/linux/drivers/oprofile/extr_event_buffer.c_event_buffer_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/oprofile/extr_event_buffer.c_event_buffer_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@buffer_opened = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @event_buffer_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_buffer_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load i32, i32* @EPERM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %10 = call i32 @capable(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EPERM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %48

15:                                               ; preds = %2
  %16 = call i64 @test_and_set_bit_lock(i32 0, i32* @buffer_opened)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %48

21:                                               ; preds = %15
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  %24 = call i32 (...) @dcookie_register()
  %25 = load %struct.file*, %struct.file** %5, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.file*, %struct.file** %5, align 8
  %28 = getelementptr inbounds %struct.file, %struct.file* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %21
  br label %45

32:                                               ; preds = %21
  %33 = call i32 (...) @oprofile_setup()
  store i32 %33, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %40

36:                                               ; preds = %32
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = load %struct.file*, %struct.file** %5, align 8
  %39 = call i32 @nonseekable_open(%struct.inode* %37, %struct.file* %38)
  store i32 %39, i32* %3, align 4
  br label %48

40:                                               ; preds = %35
  %41 = load %struct.file*, %struct.file** %5, align 8
  %42 = getelementptr inbounds %struct.file, %struct.file* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dcookie_unregister(i32 %43)
  br label %45

45:                                               ; preds = %40, %31
  %46 = call i32 @__clear_bit_unlock(i32 0, i32* @buffer_opened)
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %45, %36, %18, %12
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @test_and_set_bit_lock(i32, i32*) #1

declare dso_local i32 @dcookie_register(...) #1

declare dso_local i32 @oprofile_setup(...) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

declare dso_local i32 @dcookie_unregister(i32) #1

declare dso_local i32 @__clear_bit_unlock(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
