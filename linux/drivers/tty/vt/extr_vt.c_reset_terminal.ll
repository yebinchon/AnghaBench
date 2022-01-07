; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_reset_terminal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_reset_terminal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i64, i64, i64, i64, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64 }

@ESnormal = common dso_local global i32 0, align 4
@EPecma = common dso_local global i32 0, align 4
@LAT1_MAP = common dso_local global i32 0, align 4
@GRAF_MAP = common dso_local global i32 0, align 4
@default_utf8 = common dso_local global i32 0, align 4
@global_cursor_default = common dso_local global i32 0, align 4
@cur_default = common dso_local global i32 0, align 4
@DEFAULT_BELL_PITCH = common dso_local global i32 0, align 4
@DEFAULT_BELL_DURATION = common dso_local global i32 0, align 4
@DEFAULT_CURSOR_BLINK_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32)* @reset_terminal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_terminal(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %6 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %5, i32 0, i32 27
  store i64 0, i64* %6, align 8
  %7 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %8 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %7, i32 0, i32 25
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %11 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %10, i32 0, i32 26
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @ESnormal, align 4
  %13 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %14 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %13, i32 0, i32 24
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @EPecma, align 4
  %16 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %17 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %16, i32 0, i32 23
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @LAT1_MAP, align 4
  %19 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %20 = call i32 @set_translate(i32 %18, %struct.vc_data* %19)
  %21 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %22 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %21, i32 0, i32 22
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @LAT1_MAP, align 4
  %24 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %25 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %24, i32 0, i32 21
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @GRAF_MAP, align 4
  %27 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %28 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %27, i32 0, i32 20
  store i32 %26, i32* %28, align 8
  %29 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %30 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %29, i32 0, i32 19
  store i64 0, i64* %30, align 8
  %31 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %32 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %31, i32 0, i32 18
  store i64 0, i64* %32, align 8
  %33 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %34 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %33, i32 0, i32 17
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @default_utf8, align 4
  %36 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %37 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %36, i32 0, i32 16
  store i32 %35, i32* %37, align 8
  %38 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %39 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %38, i32 0, i32 15
  store i64 0, i64* %39, align 8
  %40 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %41 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %40, i32 0, i32 14
  store i64 0, i64* %41, align 8
  %42 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %43 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %42, i32 0, i32 13
  store i64 0, i64* %43, align 8
  %44 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %45 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %44, i32 0, i32 12
  store i64 0, i64* %45, align 8
  %46 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %47 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %46, i32 0, i32 11
  store i64 0, i64* %47, align 8
  %48 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %49 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load i32, i32* @global_cursor_default, align 4
  %51 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %52 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %51, i32 0, i32 10
  store i32 %50, i32* %52, align 8
  %53 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %54 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %53, i32 0, i32 9
  store i64 0, i64* %54, align 8
  %55 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %56 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %55, i32 0, i32 8
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @vt_reset_keyboard(i32 %57)
  %59 = load i32, i32* @cur_default, align 4
  %60 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %61 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %60, i32 0, i32 7
  store i32 %59, i32* %61, align 4
  %62 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %63 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %66 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 8
  %67 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %68 = call i32 @default_attr(%struct.vc_data* %67)
  %69 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %70 = call i32 @update_attr(%struct.vc_data* %69)
  %71 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %72 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 7
  store i32 16843009, i32* %74, align 4
  %75 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %76 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 6
  store i32 16843009, i32* %78, align 4
  %79 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %80 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 5
  store i32 16843009, i32* %82, align 4
  %83 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %84 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 4
  store i32 16843009, i32* %86, align 4
  %87 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %88 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 3
  store i32 16843009, i32* %90, align 4
  %91 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %92 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  store i32 16843009, i32* %94, align 4
  %95 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %96 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  store i32 16843009, i32* %98, align 4
  %99 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %100 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  store i32 16843009, i32* %102, align 4
  %103 = load i32, i32* @DEFAULT_BELL_PITCH, align 4
  %104 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %105 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* @DEFAULT_BELL_DURATION, align 4
  %107 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %108 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @DEFAULT_CURSOR_BLINK_MS, align 4
  %110 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %111 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  %112 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %113 = call i32 @gotoxy(%struct.vc_data* %112, i32 0, i32 0)
  %114 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %115 = call i32 @save_cur(%struct.vc_data* %114)
  %116 = load i32, i32* %4, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %2
  %119 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %120 = call i32 @csi_J(%struct.vc_data* %119, i32 2)
  br label %121

121:                                              ; preds = %118, %2
  ret void
}

declare dso_local i32 @set_translate(i32, %struct.vc_data*) #1

declare dso_local i32 @vt_reset_keyboard(i32) #1

declare dso_local i32 @default_attr(%struct.vc_data*) #1

declare dso_local i32 @update_attr(%struct.vc_data*) #1

declare dso_local i32 @gotoxy(%struct.vc_data*, i32, i32) #1

declare dso_local i32 @save_cur(%struct.vc_data*) #1

declare dso_local i32 @csi_J(%struct.vc_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
