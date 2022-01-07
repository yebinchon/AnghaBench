; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-laptop.c_kbd_get_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-laptop.c_kbd_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.kbd_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.calling_interface_buffer = type { i32* }

@CLASS_KBD_BACKLIGHT = common dso_local global i32 0, align 4
@SELECT_KBD_BACKLIGHT = common dso_local global i32 0, align 4
@quirks = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kbd_info*)* @kbd_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kbd_get_info(%struct.kbd_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kbd_info*, align 8
  %4 = alloca %struct.calling_interface_buffer, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kbd_info* %0, %struct.kbd_info** %3, align 8
  %7 = call i32 @dell_fill_request(%struct.calling_interface_buffer* %4, i32 0, i32 0, i32 0, i32 0)
  %8 = load i32, i32* @CLASS_KBD_BACKLIGHT, align 4
  %9 = load i32, i32* @SELECT_KBD_BACKLIGHT, align 4
  %10 = call i32 @dell_send_request(%struct.calling_interface_buffer* %4, i32 %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %2, align 4
  br label %127

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %4, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 65535
  %21 = load %struct.kbd_info*, %struct.kbd_info** %3, align 8
  %22 = getelementptr inbounds %struct.kbd_info, %struct.kbd_info* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %4, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 24
  %28 = and i32 %27, 255
  %29 = load %struct.kbd_info*, %struct.kbd_info** %3, align 8
  %30 = getelementptr inbounds %struct.kbd_info, %struct.kbd_info* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %4, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 255
  %36 = load %struct.kbd_info*, %struct.kbd_info** %3, align 8
  %37 = getelementptr inbounds %struct.kbd_info, %struct.kbd_info* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %4, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 8
  %43 = and i32 %42, 255
  store i32 %43, i32* %5, align 4
  %44 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %4, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 16
  %49 = and i32 %48, 255
  %50 = load %struct.kbd_info*, %struct.kbd_info** %3, align 8
  %51 = getelementptr inbounds %struct.kbd_info, %struct.kbd_info* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @quirks, align 8
  %53 = icmp ne %struct.TYPE_2__* %52, null
  br i1 %53, label %54, label %69

54:                                               ; preds = %15
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @quirks, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = load %struct.kbd_info*, %struct.kbd_info** %3, align 8
  %61 = getelementptr inbounds %struct.kbd_info, %struct.kbd_info* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.kbd_info*, %struct.kbd_info** %3, align 8
  %66 = getelementptr inbounds %struct.kbd_info, %struct.kbd_info* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %64, %59, %54, %15
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @BIT(i32 0)
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %4, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  %78 = load i32, i32* %77, align 4
  %79 = ashr i32 %78, 0
  %80 = and i32 %79, 255
  %81 = load %struct.kbd_info*, %struct.kbd_info** %3, align 8
  %82 = getelementptr inbounds %struct.kbd_info, %struct.kbd_info* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %74, %69
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @BIT(i32 1)
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %4, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 3
  %92 = load i32, i32* %91, align 4
  %93 = ashr i32 %92, 8
  %94 = and i32 %93, 255
  %95 = load %struct.kbd_info*, %struct.kbd_info** %3, align 8
  %96 = getelementptr inbounds %struct.kbd_info, %struct.kbd_info* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %88, %83
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @BIT(i32 2)
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %4, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 3
  %106 = load i32, i32* %105, align 4
  %107 = ashr i32 %106, 16
  %108 = and i32 %107, 255
  %109 = load %struct.kbd_info*, %struct.kbd_info** %3, align 8
  %110 = getelementptr inbounds %struct.kbd_info, %struct.kbd_info* %109, i32 0, i32 6
  store i32 %108, i32* %110, align 4
  br label %111

111:                                              ; preds = %102, %97
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @BIT(i32 3)
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %4, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 3
  %120 = load i32, i32* %119, align 4
  %121 = ashr i32 %120, 24
  %122 = and i32 %121, 255
  %123 = load %struct.kbd_info*, %struct.kbd_info** %3, align 8
  %124 = getelementptr inbounds %struct.kbd_info, %struct.kbd_info* %123, i32 0, i32 7
  store i32 %122, i32* %124, align 4
  br label %125

125:                                              ; preds = %116, %111
  %126 = load i32, i32* %6, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %125, %13
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @dell_fill_request(%struct.calling_interface_buffer*, i32, i32, i32, i32) #1

declare dso_local i32 @dell_send_request(%struct.calling_interface_buffer*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
