; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/console/extr_sticon.c_sticon_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/console/extr_sticon.c_sticon_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i16*, i64, i64, i64, i32 }

@sticon_sti = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32)* @sticon_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sticon_cursor(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %7 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %6, i32 0, i32 0
  %8 = load i16*, i16** %7, align 8
  %9 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %10 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %13 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %16 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = mul i64 %14, %17
  %19 = add i64 %11, %18
  %20 = getelementptr inbounds i16, i16* %8, i64 %19
  %21 = load i16, i16* %20, align 2
  store i16 %21, i16* %5, align 2
  %22 = load i32, i32* %4, align 4
  switch i32 %22, label %54 [
    i32 134, label %23
    i32 133, label %33
    i32 135, label %33
  ]

23:                                               ; preds = %2
  %24 = load i32, i32* @sticon_sti, align 4
  %25 = load i16, i16* %5, align 2
  %26 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %27 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %30 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @sti_putc(i32 %24, i16 zeroext %25, i64 %28, i64 %31)
  br label %54

33:                                               ; preds = %2, %2
  %34 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %35 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, 15
  switch i32 %37, label %53 [
    i32 128, label %38
    i32 130, label %38
    i32 131, label %38
    i32 129, label %38
    i32 132, label %38
  ]

38:                                               ; preds = %33, %33, %33, %33, %33
  %39 = load i32, i32* @sticon_sti, align 4
  %40 = load i16, i16* %5, align 2
  %41 = zext i16 %40 to i32
  %42 = and i32 %41, 255
  %43 = add nsw i32 %42, 0
  %44 = add nsw i32 %43, 14336
  %45 = trunc i32 %44 to i16
  %46 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %47 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %50 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @sti_putc(i32 %39, i16 zeroext %45, i64 %48, i64 %51)
  br label %53

53:                                               ; preds = %33, %38
  br label %54

54:                                               ; preds = %2, %53, %23
  ret void
}

declare dso_local i32 @sti_putc(i32, i16 zeroext, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
