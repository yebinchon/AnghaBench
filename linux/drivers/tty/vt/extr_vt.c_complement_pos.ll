; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_complement_pos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_complement_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i16, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.vc_data*, i16, i16, i16)* }

@complement_pos.old_offset = internal global i32 -1, align 4
@complement_pos.old = internal global i16 0, align 2
@complement_pos.oldx = internal global i16 0, align 2
@complement_pos.oldy = internal global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @complement_pos(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 (...) @WARN_CONSOLE_UNLOCKED()
  %8 = load i32, i32* @complement_pos.old_offset, align 4
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %42

10:                                               ; preds = %2
  %11 = load i32, i32* @complement_pos.old_offset, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %10
  %14 = load i32, i32* @complement_pos.old_offset, align 4
  %15 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %16 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %13
  %20 = load i16, i16* @complement_pos.old, align 2
  %21 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %22 = load i32, i32* @complement_pos.old_offset, align 4
  %23 = call i16* @screenpos(%struct.vc_data* %21, i32 %22, i32 1)
  %24 = call i32 @scr_writew(i16 zeroext %20, i16* %23)
  %25 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %26 = call i64 @con_should_update(%struct.vc_data* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %19
  %29 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %30 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %29, i32 0, i32 3
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.vc_data*, i16, i16, i16)*, i32 (%struct.vc_data*, i16, i16, i16)** %32, align 8
  %34 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %35 = load i16, i16* @complement_pos.old, align 2
  %36 = load i16, i16* @complement_pos.oldy, align 2
  %37 = load i16, i16* @complement_pos.oldx, align 2
  %38 = call i32 %33(%struct.vc_data* %34, i16 zeroext %35, i16 zeroext %36, i16 zeroext %37)
  br label %39

39:                                               ; preds = %28, %19
  %40 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %41 = call i32 @notify_update(%struct.vc_data* %40)
  br label %42

42:                                               ; preds = %39, %13, %10, %2
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* @complement_pos.old_offset, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, -1
  br i1 %45, label %46, label %103

46:                                               ; preds = %42
  %47 = load i32, i32* %4, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %103

49:                                               ; preds = %46
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %52 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %103

55:                                               ; preds = %49
  %56 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i16* @screenpos(%struct.vc_data* %56, i32 %57, i32 1)
  store i16* %58, i16** %6, align 8
  %59 = load i16*, i16** %6, align 8
  %60 = call zeroext i16 @scr_readw(i16* %59)
  store i16 %60, i16* @complement_pos.old, align 2
  %61 = load i16, i16* @complement_pos.old, align 2
  %62 = zext i16 %61 to i32
  %63 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %64 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %63, i32 0, i32 1
  %65 = load i16, i16* %64, align 4
  %66 = zext i16 %65 to i32
  %67 = xor i32 %62, %66
  %68 = trunc i32 %67 to i16
  store i16 %68, i16* %5, align 2
  %69 = load i16, i16* %5, align 2
  %70 = load i16*, i16** %6, align 8
  %71 = call i32 @scr_writew(i16 zeroext %69, i16* %70)
  %72 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %73 = call i64 @con_should_update(%struct.vc_data* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %100

75:                                               ; preds = %55
  %76 = load i32, i32* %4, align 4
  %77 = ashr i32 %76, 1
  %78 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %79 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = srem i32 %77, %80
  %82 = trunc i32 %81 to i16
  store i16 %82, i16* @complement_pos.oldx, align 2
  %83 = load i32, i32* %4, align 4
  %84 = ashr i32 %83, 1
  %85 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %86 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = sdiv i32 %84, %87
  %89 = trunc i32 %88 to i16
  store i16 %89, i16* @complement_pos.oldy, align 2
  %90 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %91 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %90, i32 0, i32 3
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32 (%struct.vc_data*, i16, i16, i16)*, i32 (%struct.vc_data*, i16, i16, i16)** %93, align 8
  %95 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %96 = load i16, i16* %5, align 2
  %97 = load i16, i16* @complement_pos.oldy, align 2
  %98 = load i16, i16* @complement_pos.oldx, align 2
  %99 = call i32 %94(%struct.vc_data* %95, i16 zeroext %96, i16 zeroext %97, i16 zeroext %98)
  br label %100

100:                                              ; preds = %75, %55
  %101 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %102 = call i32 @notify_update(%struct.vc_data* %101)
  br label %103

103:                                              ; preds = %100, %49, %46, %42
  ret void
}

declare dso_local i32 @WARN_CONSOLE_UNLOCKED(...) #1

declare dso_local i32 @scr_writew(i16 zeroext, i16*) #1

declare dso_local i16* @screenpos(%struct.vc_data*, i32, i32) #1

declare dso_local i64 @con_should_update(%struct.vc_data*) #1

declare dso_local i32 @notify_update(%struct.vc_data*) #1

declare dso_local zeroext i16 @scr_readw(i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
