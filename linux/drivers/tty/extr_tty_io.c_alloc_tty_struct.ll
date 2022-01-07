; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_alloc_tty_struct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_alloc_tty_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i32, i32, i32, %struct.tty_driver*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32 }
%struct.tty_driver = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@TTY_MAGIC = common dso_local global i32 0, align 4
@do_tty_hangup = common dso_local global i32 0, align 4
@do_SAK_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tty_struct* @alloc_tty_struct(%struct.tty_driver* %0, i32 %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.tty_driver*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty_struct*, align 8
  store %struct.tty_driver* %0, %struct.tty_driver** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.tty_struct* @kzalloc(i32 104, i32 %7)
  store %struct.tty_struct* %8, %struct.tty_struct** %6, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %10 = icmp ne %struct.tty_struct* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.tty_struct* null, %struct.tty_struct** %3, align 8
  br label %96

12:                                               ; preds = %2
  %13 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 22
  %15 = call i32 @kref_init(i32* %14)
  %16 = load i32, i32* @TTY_MAGIC, align 4
  %17 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %18 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %17, i32 0, i32 21
  store i32 %16, i32* %18, align 8
  %19 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %20 = call i64 @tty_ldisc_init(%struct.tty_struct* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %12
  %23 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %24 = call i32 @kfree(%struct.tty_struct* %23)
  store %struct.tty_struct* null, %struct.tty_struct** %3, align 8
  br label %96

25:                                               ; preds = %12
  %26 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %27 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %26, i32 0, i32 20
  store i32* null, i32** %27, align 8
  %28 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %29 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %28, i32 0, i32 19
  store i32* null, i32** %29, align 8
  %30 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %31 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %30, i32 0, i32 18
  %32 = call i32 @mutex_init(i32* %31)
  %33 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %34 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %33, i32 0, i32 17
  %35 = call i32 @mutex_init(i32* %34)
  %36 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %37 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %36, i32 0, i32 16
  %38 = call i32 @init_rwsem(i32* %37)
  %39 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %40 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %39, i32 0, i32 15
  %41 = call i32 @mutex_init(i32* %40)
  %42 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %43 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %42, i32 0, i32 14
  %44 = call i32 @init_ldsem(i32* %43)
  %45 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %46 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %45, i32 0, i32 13
  %47 = call i32 @init_waitqueue_head(i32* %46)
  %48 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %49 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %48, i32 0, i32 12
  %50 = call i32 @init_waitqueue_head(i32* %49)
  %51 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %52 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %51, i32 0, i32 11
  %53 = load i32, i32* @do_tty_hangup, align 4
  %54 = call i32 @INIT_WORK(i32* %52, i32 %53)
  %55 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %56 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %55, i32 0, i32 10
  %57 = call i32 @mutex_init(i32* %56)
  %58 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %59 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %58, i32 0, i32 9
  %60 = call i32 @spin_lock_init(i32* %59)
  %61 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %62 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %61, i32 0, i32 8
  %63 = call i32 @spin_lock_init(i32* %62)
  %64 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %65 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %64, i32 0, i32 7
  %66 = call i32 @spin_lock_init(i32* %65)
  %67 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %68 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %67, i32 0, i32 6
  %69 = call i32 @INIT_LIST_HEAD(i32* %68)
  %70 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %71 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %70, i32 0, i32 5
  %72 = load i32, i32* @do_SAK_work, align 4
  %73 = call i32 @INIT_WORK(i32* %71, i32 %72)
  %74 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %75 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %76 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %75, i32 0, i32 4
  store %struct.tty_driver* %74, %struct.tty_driver** %76, align 8
  %77 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %78 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %81 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %84 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %88 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @tty_line_name(%struct.tty_driver* %85, i32 %86, i32 %89)
  %91 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %92 = call i32 @tty_get_device(%struct.tty_struct* %91)
  %93 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %94 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  store %struct.tty_struct* %95, %struct.tty_struct** %3, align 8
  br label %96

96:                                               ; preds = %25, %22, %11
  %97 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  ret %struct.tty_struct* %97
}

declare dso_local %struct.tty_struct* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i64 @tty_ldisc_init(%struct.tty_struct*) #1

declare dso_local i32 @kfree(%struct.tty_struct*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @init_ldsem(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @tty_line_name(%struct.tty_driver*, i32, i32) #1

declare dso_local i32 @tty_get_device(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
