; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_tty.c_register_lte_tty_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_tty.c_register_lte_tty_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdm = type { i32, i32, %struct.tty_dev*, %struct.TYPE_3__ }
%struct.tty_dev = type { i32, i32 (i32, i32)*, %struct.gdm** }
%struct.TYPE_3__ = type { i32* }
%struct.device = type { i32 }

@TTY_MAX_COUNT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gdm_table_lock = common dso_local global i32 0, align 4
@GDM_TTY_MINOR = common dso_local global i32 0, align 4
@gdm_table = common dso_local global %struct.gdm*** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@gdm_port_ops = common dso_local global i32 0, align 4
@gdm_driver = common dso_local global i32* null, align 8
@MAX_ISSUE_NUM = common dso_local global i32 0, align 4
@gdm_tty_recv_complete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_lte_tty_device(%struct.tty_dev* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_dev*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.gdm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tty_dev* %0, %struct.tty_dev** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %98, %2
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @TTY_MAX_COUNT, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %101

13:                                               ; preds = %9
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.gdm* @kmalloc(i32 24, i32 %14)
  store %struct.gdm* %15, %struct.gdm** %6, align 8
  %16 = load %struct.gdm*, %struct.gdm** %6, align 8
  %17 = icmp ne %struct.gdm* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %123

21:                                               ; preds = %13
  %22 = call i32 @mutex_lock(i32* @gdm_table_lock)
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %40, %21
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @GDM_TTY_MINOR, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %23
  %28 = load %struct.gdm***, %struct.gdm**** @gdm_table, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.gdm**, %struct.gdm*** %28, i64 %30
  %32 = load %struct.gdm**, %struct.gdm*** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.gdm*, %struct.gdm** %32, i64 %34
  %36 = load %struct.gdm*, %struct.gdm** %35, align 8
  %37 = icmp ne %struct.gdm* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %27
  br label %43

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %23

43:                                               ; preds = %38, %23
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @GDM_TTY_MINOR, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load %struct.gdm*, %struct.gdm** %6, align 8
  %49 = call i32 @kfree(%struct.gdm* %48)
  %50 = call i32 @mutex_unlock(i32* @gdm_table_lock)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %123

53:                                               ; preds = %43
  %54 = load %struct.gdm*, %struct.gdm** %6, align 8
  %55 = load %struct.gdm***, %struct.gdm**** @gdm_table, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.gdm**, %struct.gdm*** %55, i64 %57
  %59 = load %struct.gdm**, %struct.gdm*** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.gdm*, %struct.gdm** %59, i64 %61
  store %struct.gdm* %54, %struct.gdm** %62, align 8
  %63 = call i32 @mutex_unlock(i32* @gdm_table_lock)
  %64 = load %struct.gdm*, %struct.gdm** %6, align 8
  %65 = load %struct.tty_dev*, %struct.tty_dev** %4, align 8
  %66 = getelementptr inbounds %struct.tty_dev, %struct.tty_dev* %65, i32 0, i32 2
  %67 = load %struct.gdm**, %struct.gdm*** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.gdm*, %struct.gdm** %67, i64 %69
  store %struct.gdm* %64, %struct.gdm** %70, align 8
  %71 = load %struct.gdm*, %struct.gdm** %6, align 8
  %72 = getelementptr inbounds %struct.gdm, %struct.gdm* %71, i32 0, i32 3
  %73 = call i32 @tty_port_init(%struct.TYPE_3__* %72)
  %74 = load %struct.gdm*, %struct.gdm** %6, align 8
  %75 = getelementptr inbounds %struct.gdm, %struct.gdm* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store i32* @gdm_port_ops, i32** %76, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.gdm*, %struct.gdm** %6, align 8
  %79 = getelementptr inbounds %struct.gdm, %struct.gdm* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.gdm*, %struct.gdm** %6, align 8
  %82 = getelementptr inbounds %struct.gdm, %struct.gdm* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.tty_dev*, %struct.tty_dev** %4, align 8
  %84 = load %struct.gdm*, %struct.gdm** %6, align 8
  %85 = getelementptr inbounds %struct.gdm, %struct.gdm* %84, i32 0, i32 2
  store %struct.tty_dev* %83, %struct.tty_dev** %85, align 8
  %86 = load %struct.gdm*, %struct.gdm** %6, align 8
  %87 = getelementptr inbounds %struct.gdm, %struct.gdm* %86, i32 0, i32 3
  %88 = load i32*, i32** @gdm_driver, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.gdm*, %struct.gdm** %6, align 8
  %94 = getelementptr inbounds %struct.gdm, %struct.gdm* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.device*, %struct.device** %5, align 8
  %97 = call i32 @tty_port_register_device(%struct.TYPE_3__* %87, i32 %92, i32 %95, %struct.device* %96)
  br label %98

98:                                               ; preds = %53
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %9

101:                                              ; preds = %9
  store i32 0, i32* %7, align 4
  br label %102

102:                                              ; preds = %119, %101
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @MAX_ISSUE_NUM, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %122

106:                                              ; preds = %102
  %107 = load %struct.gdm*, %struct.gdm** %6, align 8
  %108 = getelementptr inbounds %struct.gdm, %struct.gdm* %107, i32 0, i32 2
  %109 = load %struct.tty_dev*, %struct.tty_dev** %108, align 8
  %110 = getelementptr inbounds %struct.tty_dev, %struct.tty_dev* %109, i32 0, i32 1
  %111 = load i32 (i32, i32)*, i32 (i32, i32)** %110, align 8
  %112 = load %struct.gdm*, %struct.gdm** %6, align 8
  %113 = getelementptr inbounds %struct.gdm, %struct.gdm* %112, i32 0, i32 2
  %114 = load %struct.tty_dev*, %struct.tty_dev** %113, align 8
  %115 = getelementptr inbounds %struct.tty_dev, %struct.tty_dev* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @gdm_tty_recv_complete, align 4
  %118 = call i32 %111(i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %106
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %102

122:                                              ; preds = %102
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %122, %47, %18
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.gdm* @kmalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kfree(%struct.gdm*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tty_port_init(%struct.TYPE_3__*) #1

declare dso_local i32 @tty_port_register_device(%struct.TYPE_3__*, i32, i32, %struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
