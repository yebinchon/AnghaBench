; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mb862xx/extr_mb862xxfb_accel.c_mb86290fb_copyarea.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mb862xx/extr_mb862xxfb_accel.c_mb86290fb_copyarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }

@GDC_TYPE_SETREGISTER = common dso_local global i32 0, align 4
@GDC_REG_MODE_BITMAP = common dso_local global i32 0, align 4
@GDC_ROP_COPY = common dso_local global i32 0, align 4
@GDC_TYPE_BLTCOPYP = common dso_local global i32 0, align 4
@GDC_CMD_BLTCOPY_TOP_LEFT = common dso_local global i32 0, align 4
@GDC_CMD_BLTCOPY_BOTTOM_LEFT = common dso_local global i32 0, align 4
@GDC_CMD_BLTCOPY_TOP_RIGHT = common dso_local global i32 0, align 4
@GDC_CMD_BLTCOPY_BOTTOM_RIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_copyarea*)* @mb86290fb_copyarea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mb86290fb_copyarea(%struct.fb_info* %0, %struct.fb_copyarea* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_copyarea*, align 8
  %5 = alloca [6 x i32], align 16
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_copyarea* %1, %struct.fb_copyarea** %4, align 8
  %6 = load i32, i32* @GDC_TYPE_SETREGISTER, align 4
  %7 = shl i32 %6, 24
  %8 = or i32 %7, 65536
  %9 = load i32, i32* @GDC_REG_MODE_BITMAP, align 4
  %10 = or i32 %8, %9
  %11 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  store i32 %10, i32* %11, align 16
  %12 = load i32, i32* @GDC_ROP_COPY, align 4
  %13 = shl i32 %12, 9
  %14 = or i32 256, %13
  %15 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @GDC_TYPE_BLTCOPYP, align 4
  %17 = shl i32 %16, 24
  %18 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  store i32 %17, i32* %18, align 8
  %19 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %20 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %23 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp sge i32 %21, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %2
  %27 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %28 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %31 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = icmp sge i32 %29, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load i32, i32* @GDC_CMD_BLTCOPY_TOP_LEFT, align 4
  %36 = shl i32 %35, 16
  %37 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %36
  store i32 %39, i32* %37, align 8
  br label %92

40:                                               ; preds = %26, %2
  %41 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %42 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %45 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp sge i32 %43, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %40
  %49 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %50 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %53 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = icmp sle i32 %51, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %48
  %57 = load i32, i32* @GDC_CMD_BLTCOPY_BOTTOM_LEFT, align 4
  %58 = shl i32 %57, 16
  %59 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %58
  store i32 %61, i32* %59, align 8
  br label %91

62:                                               ; preds = %48, %40
  %63 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %64 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %67 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp sle i32 %65, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %62
  %71 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %72 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %75 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = icmp sge i32 %73, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %70
  %79 = load i32, i32* @GDC_CMD_BLTCOPY_TOP_RIGHT, align 4
  %80 = shl i32 %79, 16
  %81 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %80
  store i32 %83, i32* %81, align 8
  br label %90

84:                                               ; preds = %70, %62
  %85 = load i32, i32* @GDC_CMD_BLTCOPY_BOTTOM_RIGHT, align 4
  %86 = shl i32 %85, 16
  %87 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %86
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %84, %78
  br label %91

91:                                               ; preds = %90, %56
  br label %92

92:                                               ; preds = %91, %34
  %93 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %94 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 16
  %97 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %98 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %96, %99
  %101 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 3
  store i32 %100, i32* %101, align 4
  %102 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %103 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %104, 16
  %106 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %107 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %105, %108
  %110 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 4
  store i32 %109, i32* %110, align 16
  %111 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %112 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = shl i32 %113, 16
  %115 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %116 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %114, %117
  %119 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 5
  store i32 %118, i32* %119, align 4
  %120 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %121 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %122 = call i32 @mb862xxfb_write_fifo(i32 6, i32* %120, %struct.fb_info* %121)
  ret void
}

declare dso_local i32 @mb862xxfb_write_fifo(i32, i32*, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
