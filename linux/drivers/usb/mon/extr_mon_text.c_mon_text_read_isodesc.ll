; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_text.c_mon_text_read_isodesc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_text.c_mon_text_read_isodesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mon_reader_text = type { i32 }
%struct.mon_text_ptr = type { i64, i64, i64 }
%struct.mon_event_text = type { i32, %struct.mon_iso_desc* }
%struct.mon_iso_desc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@ISODESC_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c" %d:%u:%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mon_reader_text*, %struct.mon_text_ptr*, %struct.mon_event_text*)* @mon_text_read_isodesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mon_text_read_isodesc(%struct.mon_reader_text* %0, %struct.mon_text_ptr* %1, %struct.mon_event_text* %2) #0 {
  %4 = alloca %struct.mon_reader_text*, align 8
  %5 = alloca %struct.mon_text_ptr*, align 8
  %6 = alloca %struct.mon_event_text*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mon_iso_desc*, align 8
  store %struct.mon_reader_text* %0, %struct.mon_reader_text** %4, align 8
  store %struct.mon_text_ptr* %1, %struct.mon_text_ptr** %5, align 8
  store %struct.mon_event_text* %2, %struct.mon_event_text** %6, align 8
  %10 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %11 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %14 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  %17 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %18 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %21 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %19, %22
  %24 = load %struct.mon_event_text*, %struct.mon_event_text** %6, align 8
  %25 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 (i64, i64, i8*, i32, ...) @snprintf(i64 %16, i64 %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %29 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, %27
  store i64 %31, i64* %29, align 8
  %32 = load %struct.mon_event_text*, %struct.mon_event_text** %6, align 8
  %33 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @ISODESC_MAX, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %3
  %39 = load i32, i32* @ISODESC_MAX, align 4
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %38, %3
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %43, %40
  %45 = load %struct.mon_event_text*, %struct.mon_event_text** %6, align 8
  %46 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %45, i32 0, i32 1
  %47 = load %struct.mon_iso_desc*, %struct.mon_iso_desc** %46, align 8
  store %struct.mon_iso_desc* %47, %struct.mon_iso_desc** %9, align 8
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %83, %44
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %86

52:                                               ; preds = %48
  %53 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %54 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %57 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %55, %58
  %60 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %61 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %64 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %62, %65
  %67 = load %struct.mon_iso_desc*, %struct.mon_iso_desc** %9, align 8
  %68 = getelementptr inbounds %struct.mon_iso_desc, %struct.mon_iso_desc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.mon_iso_desc*, %struct.mon_iso_desc** %9, align 8
  %71 = getelementptr inbounds %struct.mon_iso_desc, %struct.mon_iso_desc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.mon_iso_desc*, %struct.mon_iso_desc** %9, align 8
  %74 = getelementptr inbounds %struct.mon_iso_desc, %struct.mon_iso_desc* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i64 (i64, i64, i8*, i32, ...) @snprintf(i64 %59, i64 %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %72, i32 %75)
  %77 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %78 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, %76
  store i64 %80, i64* %78, align 8
  %81 = load %struct.mon_iso_desc*, %struct.mon_iso_desc** %9, align 8
  %82 = getelementptr inbounds %struct.mon_iso_desc, %struct.mon_iso_desc* %81, i32 1
  store %struct.mon_iso_desc* %82, %struct.mon_iso_desc** %9, align 8
  br label %83

83:                                               ; preds = %52
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %48

86:                                               ; preds = %48
  ret void
}

declare dso_local i64 @snprintf(i64, i64, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
