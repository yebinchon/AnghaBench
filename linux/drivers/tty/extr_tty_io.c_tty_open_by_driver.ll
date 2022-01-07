; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_tty_open_by_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_tty_open_by_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.tty_driver = type { i32 }

@tty_mutex = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tty_struct* (i32, %struct.inode*, %struct.file*)* @tty_open_by_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tty_struct* @tty_open_by_driver(i32 %0, %struct.inode* %1, %struct.file* %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.tty_struct*, align 8
  %9 = alloca %struct.tty_driver*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.file* %2, %struct.file** %7, align 8
  store %struct.tty_driver* null, %struct.tty_driver** %9, align 8
  store i32 -1, i32* %10, align 4
  %12 = call i32 @mutex_lock(i32* @tty_mutex)
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.file*, %struct.file** %7, align 8
  %15 = call %struct.tty_struct* @tty_lookup_driver(i32 %13, %struct.file* %14, i32* %10)
  %16 = bitcast %struct.tty_struct* %15 to %struct.tty_driver*
  store %struct.tty_driver* %16, %struct.tty_driver** %9, align 8
  %17 = load %struct.tty_driver*, %struct.tty_driver** %9, align 8
  %18 = bitcast %struct.tty_driver* %17 to %struct.tty_struct*
  %19 = call i64 @IS_ERR(%struct.tty_struct* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = call i32 @mutex_unlock(i32* @tty_mutex)
  %23 = load %struct.tty_driver*, %struct.tty_driver** %9, align 8
  %24 = bitcast %struct.tty_driver* %23 to %struct.tty_struct*
  %25 = call %struct.tty_struct* @ERR_CAST(%struct.tty_struct* %24)
  store %struct.tty_struct* %25, %struct.tty_struct** %4, align 8
  br label %95

26:                                               ; preds = %3
  %27 = load %struct.tty_driver*, %struct.tty_driver** %9, align 8
  %28 = bitcast %struct.tty_driver* %27 to %struct.tty_struct*
  %29 = load %struct.file*, %struct.file** %7, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call %struct.tty_struct* @tty_driver_lookup_tty(%struct.tty_struct* %28, %struct.file* %29, i32 %30)
  store %struct.tty_struct* %31, %struct.tty_struct** %8, align 8
  %32 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %33 = call i64 @IS_ERR(%struct.tty_struct* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = call i32 @mutex_unlock(i32* @tty_mutex)
  br label %90

37:                                               ; preds = %26
  %38 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %39 = icmp ne %struct.tty_struct* %38, null
  br i1 %39, label %40, label %83

40:                                               ; preds = %37
  %41 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %42 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @tty_port_kopened(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %48 = call i32 @tty_kref_put(%struct.tty_struct* %47)
  %49 = call i32 @mutex_unlock(i32* @tty_mutex)
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  %52 = call %struct.tty_struct* @ERR_PTR(i32 %51)
  store %struct.tty_struct* %52, %struct.tty_struct** %8, align 8
  br label %90

53:                                               ; preds = %40
  %54 = call i32 @mutex_unlock(i32* @tty_mutex)
  %55 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %56 = call i32 @tty_lock_interruptible(%struct.tty_struct* %55)
  store i32 %56, i32* %11, align 4
  %57 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %58 = call i32 @tty_kref_put(%struct.tty_struct* %57)
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %53
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @EINTR, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* @ERESTARTSYS, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %66, %61
  %70 = load i32, i32* %11, align 4
  %71 = call %struct.tty_struct* @ERR_PTR(i32 %70)
  store %struct.tty_struct* %71, %struct.tty_struct** %8, align 8
  br label %90

72:                                               ; preds = %53
  %73 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %74 = call i32 @tty_reopen(%struct.tty_struct* %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %79 = call i32 @tty_unlock(%struct.tty_struct* %78)
  %80 = load i32, i32* %11, align 4
  %81 = call %struct.tty_struct* @ERR_PTR(i32 %80)
  store %struct.tty_struct* %81, %struct.tty_struct** %8, align 8
  br label %82

82:                                               ; preds = %77, %72
  br label %89

83:                                               ; preds = %37
  %84 = load %struct.tty_driver*, %struct.tty_driver** %9, align 8
  %85 = bitcast %struct.tty_driver* %84 to %struct.tty_struct*
  %86 = load i32, i32* %10, align 4
  %87 = call %struct.tty_struct* @tty_init_dev(%struct.tty_struct* %85, i32 %86)
  store %struct.tty_struct* %87, %struct.tty_struct** %8, align 8
  %88 = call i32 @mutex_unlock(i32* @tty_mutex)
  br label %89

89:                                               ; preds = %83, %82
  br label %90

90:                                               ; preds = %89, %69, %46, %35
  %91 = load %struct.tty_driver*, %struct.tty_driver** %9, align 8
  %92 = bitcast %struct.tty_driver* %91 to %struct.tty_struct*
  %93 = call i32 @tty_driver_kref_put(%struct.tty_struct* %92)
  %94 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  store %struct.tty_struct* %94, %struct.tty_struct** %4, align 8
  br label %95

95:                                               ; preds = %90, %21
  %96 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  ret %struct.tty_struct* %96
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.tty_struct* @tty_lookup_driver(i32, %struct.file*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.tty_struct*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.tty_struct* @ERR_CAST(%struct.tty_struct*) #1

declare dso_local %struct.tty_struct* @tty_driver_lookup_tty(%struct.tty_struct*, %struct.file*, i32) #1

declare dso_local i64 @tty_port_kopened(i32) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

declare dso_local %struct.tty_struct* @ERR_PTR(i32) #1

declare dso_local i32 @tty_lock_interruptible(%struct.tty_struct*) #1

declare dso_local i32 @tty_reopen(%struct.tty_struct*) #1

declare dso_local i32 @tty_unlock(%struct.tty_struct*) #1

declare dso_local %struct.tty_struct* @tty_init_dev(%struct.tty_struct*, i32) #1

declare dso_local i32 @tty_driver_kref_put(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
