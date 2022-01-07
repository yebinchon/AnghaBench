; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_text.c_mon_text_read_isostat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_text.c_mon_text_read_isostat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mon_reader_text = type { i32 }
%struct.mon_text_ptr = type { i64, i64, i64 }
%struct.mon_event_text = type { i8, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c" %d:%d:%d\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c" %d:%d:%d:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mon_reader_text*, %struct.mon_text_ptr*, %struct.mon_event_text*)* @mon_text_read_isostat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mon_text_read_isostat(%struct.mon_reader_text* %0, %struct.mon_text_ptr* %1, %struct.mon_event_text* %2) #0 {
  %4 = alloca %struct.mon_reader_text*, align 8
  %5 = alloca %struct.mon_text_ptr*, align 8
  %6 = alloca %struct.mon_event_text*, align 8
  store %struct.mon_reader_text* %0, %struct.mon_reader_text** %4, align 8
  store %struct.mon_text_ptr* %1, %struct.mon_text_ptr** %5, align 8
  store %struct.mon_event_text* %2, %struct.mon_event_text** %6, align 8
  %7 = load %struct.mon_event_text*, %struct.mon_event_text** %6, align 8
  %8 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %7, i32 0, i32 0
  %9 = load i8, i8* %8, align 4
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 83
  br i1 %11, label %12, label %41

12:                                               ; preds = %3
  %13 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %14 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %17 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %15, %18
  %20 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %21 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %24 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %22, %25
  %27 = load %struct.mon_event_text*, %struct.mon_event_text** %6, align 8
  %28 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mon_event_text*, %struct.mon_event_text** %6, align 8
  %31 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mon_event_text*, %struct.mon_event_text** %6, align 8
  %34 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i64 (i64, i64, i8*, i32, i32, i32, ...) @snprintf(i64 %19, i64 %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32, i32 %35)
  %37 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %38 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, %36
  store i64 %40, i64* %38, align 8
  br label %73

41:                                               ; preds = %3
  %42 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %43 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %46 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %50 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %53 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %51, %54
  %56 = load %struct.mon_event_text*, %struct.mon_event_text** %6, align 8
  %57 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.mon_event_text*, %struct.mon_event_text** %6, align 8
  %60 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.mon_event_text*, %struct.mon_event_text** %6, align 8
  %63 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.mon_event_text*, %struct.mon_event_text** %6, align 8
  %66 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = call i64 (i64, i64, i8*, i32, i32, i32, ...) @snprintf(i64 %48, i64 %55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %61, i32 %64, i32 %67)
  %69 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %70 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, %68
  store i64 %72, i64* %70, align 8
  br label %73

73:                                               ; preds = %41, %12
  ret void
}

declare dso_local i64 @snprintf(i64, i64, i8*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
