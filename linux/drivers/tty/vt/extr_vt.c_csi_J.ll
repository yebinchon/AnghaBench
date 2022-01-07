; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_csi_J.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_csi_J.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32)* @csi_J to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csi_J(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %95 [
    i32 0, label %8
    i32 1, label %48
    i32 3, label %74
    i32 2, label %77
  ]

8:                                                ; preds = %2
  %9 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %10 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %11 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %14 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %17 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub i32 %15, %18
  %20 = call i32 @vc_uniscr_clear_line(%struct.vc_data* %9, i32 %12, i32 %19)
  %21 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %22 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %23 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = add i32 %24, 1
  %26 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %27 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %30 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = sub i32 %28, %31
  %33 = sub i32 %32, 1
  %34 = call i32 @vc_uniscr_clear_lines(%struct.vc_data* %21, i32 %25, i32 %33)
  %35 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %36 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %39 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %37, %40
  %42 = ashr i32 %41, 1
  store i32 %42, i32* %5, align 4
  %43 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %44 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i16*
  store i16* %47, i16** %6, align 8
  br label %96

48:                                               ; preds = %2
  %49 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %50 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %51 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add i32 %52, 1
  %54 = call i32 @vc_uniscr_clear_line(%struct.vc_data* %49, i32 0, i32 %53)
  %55 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %56 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %57 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @vc_uniscr_clear_lines(%struct.vc_data* %55, i32 0, i32 %58)
  %60 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %61 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %64 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 %62, %65
  %67 = ashr i32 %66, 1
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  %69 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %70 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to i16*
  store i16* %73, i16** %6, align 8
  br label %96

74:                                               ; preds = %2
  %75 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %76 = call i32 @flush_scrollback(%struct.vc_data* %75)
  br label %77

77:                                               ; preds = %2, %74
  %78 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %79 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %80 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @vc_uniscr_clear_lines(%struct.vc_data* %78, i32 0, i32 %81)
  %83 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %84 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %87 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = mul i32 %85, %88
  store i32 %89, i32* %5, align 4
  %90 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %91 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to i16*
  store i16* %94, i16** %6, align 8
  br label %96

95:                                               ; preds = %2
  br label %116

96:                                               ; preds = %77, %48, %8
  %97 = load i16*, i16** %6, align 8
  %98 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %99 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %98, i32 0, i32 8
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = mul i32 2, %101
  %103 = call i32 @scr_memsetw(i16* %97, i32 %100, i32 %102)
  %104 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %105 = call i64 @con_should_update(%struct.vc_data* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %96
  %108 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %109 = load i16*, i16** %6, align 8
  %110 = ptrtoint i16* %109 to i64
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @do_update_region(%struct.vc_data* %108, i64 %110, i32 %111)
  br label %113

113:                                              ; preds = %107, %96
  %114 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %115 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %114, i32 0, i32 7
  store i64 0, i64* %115, align 8
  br label %116

116:                                              ; preds = %113, %95
  ret void
}

declare dso_local i32 @vc_uniscr_clear_line(%struct.vc_data*, i32, i32) #1

declare dso_local i32 @vc_uniscr_clear_lines(%struct.vc_data*, i32, i32) #1

declare dso_local i32 @flush_scrollback(%struct.vc_data*) #1

declare dso_local i32 @scr_memsetw(i16*, i32, i32) #1

declare dso_local i64 @con_should_update(%struct.vc_data*) #1

declare dso_local i32 @do_update_region(%struct.vc_data*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
