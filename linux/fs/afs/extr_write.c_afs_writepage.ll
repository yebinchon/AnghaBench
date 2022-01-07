; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_write.c_afs_writepage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_write.c_afs_writepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32, i32 }
%struct.writeback_control = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"{%lx},\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_writepage(%struct.page* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %7 = load %struct.page*, %struct.page** %4, align 8
  %8 = getelementptr inbounds %struct.page, %struct.page* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @_enter(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.page*, %struct.page** %4, align 8
  %12 = getelementptr inbounds %struct.page, %struct.page* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %15 = load %struct.page*, %struct.page** %4, align 8
  %16 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %17 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PAGE_SHIFT, align 4
  %20 = ashr i32 %18, %19
  %21 = call i32 @afs_write_back_from_locked_page(i32 %13, %struct.writeback_control* %14, %struct.page* %15, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  store i32 0, i32* %3, align 4
  br label %34

27:                                               ; preds = %2
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %30 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %27, %24
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @_enter(i8*, i32) #1

declare dso_local i32 @afs_write_back_from_locked_page(i32, %struct.writeback_control*, %struct.page*, i32) #1

declare dso_local i32 @_leave(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
