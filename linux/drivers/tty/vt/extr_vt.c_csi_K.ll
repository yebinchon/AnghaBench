; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_csi_K.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_csi_K.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32)* @csi_K to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csi_K(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16*, align 8
  %7 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %9 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i16*
  store i16* %11, i16** %6, align 8
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %38 [
    i32 0, label %13
    i32 1, label %21
    i32 2, label %30
  ]

13:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %14 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %15 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %18 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sub i32 %16, %19
  store i32 %20, i32* %5, align 4
  br label %39

21:                                               ; preds = %2
  %22 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %23 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sub i32 0, %24
  store i32 %25, i32* %7, align 4
  %26 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %27 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %39

30:                                               ; preds = %2
  %31 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %32 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sub i32 0, %33
  store i32 %34, i32* %7, align 4
  %35 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %36 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %5, align 4
  br label %39

38:                                               ; preds = %2
  br label %72

39:                                               ; preds = %30, %21, %13
  %40 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %41 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %42 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = add i32 %43, %44
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @vc_uniscr_clear_line(%struct.vc_data* %40, i32 %45, i32 %46)
  %48 = load i16*, i16** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i16, i16* %48, i64 %50
  %52 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %53 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = mul i32 2, %55
  %57 = call i32 @scr_memsetw(i16* %51, i32 %54, i32 %56)
  %58 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %59 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %58, i32 0, i32 2
  store i64 0, i64* %59, align 8
  %60 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %61 = call i64 @con_should_update(%struct.vc_data* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %39
  %64 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %65 = load i16*, i16** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i16, i16* %65, i64 %67
  %69 = ptrtoint i16* %68 to i64
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @do_update_region(%struct.vc_data* %64, i64 %69, i32 %70)
  br label %72

72:                                               ; preds = %38, %63, %39
  ret void
}

declare dso_local i32 @vc_uniscr_clear_line(%struct.vc_data*, i32, i32) #1

declare dso_local i32 @scr_memsetw(i16*, i32, i32) #1

declare dso_local i64 @con_should_update(%struct.vc_data*) #1

declare dso_local i32 @do_update_region(%struct.vc_data*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
