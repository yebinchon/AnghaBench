; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_insert_char.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_insert_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32)* @insert_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_char(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %7 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i16*
  store i16* %9, i16** %5, align 8
  %10 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @vc_uniscr_insert(%struct.vc_data* %10, i32 %11)
  %13 = load i16*, i16** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i16, i16* %13, i64 %15
  %17 = load i16*, i16** %5, align 8
  %18 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %19 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %22 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sub i32 %20, %23
  %25 = load i32, i32* %4, align 4
  %26 = sub i32 %24, %25
  %27 = mul i32 %26, 2
  %28 = call i32 @scr_memmovew(i16* %16, i16* %17, i32 %27)
  %29 = load i16*, i16** %5, align 8
  %30 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %31 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = mul i32 %33, 2
  %35 = call i32 @scr_memsetw(i16* %29, i32 %32, i32 %34)
  %36 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %37 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %39 = call i64 @con_should_update(%struct.vc_data* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %2
  %42 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %43 = load i16*, i16** %5, align 8
  %44 = ptrtoint i16* %43 to i64
  %45 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %46 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %49 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sub i32 %47, %50
  %52 = call i32 @do_update_region(%struct.vc_data* %42, i64 %44, i32 %51)
  br label %53

53:                                               ; preds = %41, %2
  ret void
}

declare dso_local i32 @vc_uniscr_insert(%struct.vc_data*, i32) #1

declare dso_local i32 @scr_memmovew(i16*, i16*, i32) #1

declare dso_local i32 @scr_memsetw(i16*, i32, i32) #1

declare dso_local i64 @con_should_update(%struct.vc_data*) #1

declare dso_local i32 @do_update_region(%struct.vc_data*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
