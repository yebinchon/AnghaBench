; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_text.c_mon_text_read_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_text.c_mon_text_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mon_reader_text = type { i32 }
%struct.mon_text_ptr = type { i64, i64, i64 }
%struct.mon_event_text = type { i32, i64, i32* }

@.str = private unnamed_addr constant [3 x i8] c" =\00", align 1
@DATA_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" %c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mon_reader_text*, %struct.mon_text_ptr*, %struct.mon_event_text*)* @mon_text_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mon_text_read_data(%struct.mon_reader_text* %0, %struct.mon_text_ptr* %1, %struct.mon_event_text* %2) #0 {
  %4 = alloca %struct.mon_reader_text*, align 8
  %5 = alloca %struct.mon_text_ptr*, align 8
  %6 = alloca %struct.mon_event_text*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mon_reader_text* %0, %struct.mon_reader_text** %4, align 8
  store %struct.mon_text_ptr* %1, %struct.mon_text_ptr** %5, align 8
  store %struct.mon_event_text* %2, %struct.mon_event_text** %6, align 8
  %9 = load %struct.mon_event_text*, %struct.mon_event_text** %6, align 8
  %10 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %146

13:                                               ; preds = %3
  %14 = load %struct.mon_event_text*, %struct.mon_event_text** %6, align 8
  %15 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %122

18:                                               ; preds = %13
  %19 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %20 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %23 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %27 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %30 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %28, %31
  %33 = call i64 (i64, i64, i8*, ...) @snprintf(i64 %25, i64 %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %35 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, %33
  store i64 %37, i64* %35, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @DATA_MAX, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %18
  %42 = load i32, i32* @DATA_MAX, align 4
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %41, %18
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %99, %43
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %102

48:                                               ; preds = %44
  %49 = load i32, i32* %8, align 4
  %50 = srem i32 %49, 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %72

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
  %67 = call i64 (i64, i64, i8*, ...) @snprintf(i64 %59, i64 %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %69 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, %67
  store i64 %71, i64* %69, align 8
  br label %72

72:                                               ; preds = %52, %48
  %73 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %74 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %77 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %75, %78
  %80 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %81 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %84 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %82, %85
  %87 = load %struct.mon_event_text*, %struct.mon_event_text** %6, align 8
  %88 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i64 (i64, i64, i8*, ...) @snprintf(i64 %79, i64 %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  %95 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %96 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, %94
  store i64 %98, i64* %96, align 8
  br label %99

99:                                               ; preds = %72
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %44

102:                                              ; preds = %44
  %103 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %104 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %107 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %105, %108
  %110 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %111 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %114 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = sub nsw i64 %112, %115
  %117 = call i64 (i64, i64, i8*, ...) @snprintf(i64 %109, i64 %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %118 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %119 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %120, %117
  store i64 %121, i64* %119, align 8
  br label %145

122:                                              ; preds = %13
  %123 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %124 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %127 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %125, %128
  %130 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %131 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %134 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = sub nsw i64 %132, %135
  %137 = load %struct.mon_event_text*, %struct.mon_event_text** %6, align 8
  %138 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = call i64 (i64, i64, i8*, ...) @snprintf(i64 %129, i64 %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 %139)
  %141 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %142 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %143, %140
  store i64 %144, i64* %142, align 8
  br label %145

145:                                              ; preds = %122, %102
  br label %166

146:                                              ; preds = %3
  %147 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %148 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %151 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %149, %152
  %154 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %155 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %158 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = sub nsw i64 %156, %159
  %161 = call i64 (i64, i64, i8*, ...) @snprintf(i64 %153, i64 %160, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %162 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %163 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %164, %161
  store i64 %165, i64* %163, align 8
  br label %166

166:                                              ; preds = %146, %145
  ret void
}

declare dso_local i64 @snprintf(i64, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
