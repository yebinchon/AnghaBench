; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eer.c_dasd_eer_start_record.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eer.c_dasd_eer_start_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eerbuffer = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eerbuffer*, i32)* @dasd_eer_start_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eer_start_record(%struct.eerbuffer* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.eerbuffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.eerbuffer* %0, %struct.eerbuffer** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = sext i32 %7 to i64
  %9 = add i64 %8, 4
  %10 = load %struct.eerbuffer*, %struct.eerbuffer** %4, align 8
  %11 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ugt i64 %9, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %87

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %82, %18
  %20 = load %struct.eerbuffer*, %struct.eerbuffer** %4, align 8
  %21 = call i32 @dasd_eer_get_free_bytes(%struct.eerbuffer* %20)
  %22 = sext i32 %21 to i64
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = add i64 %24, 4
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %83

27:                                               ; preds = %19
  %28 = load %struct.eerbuffer*, %struct.eerbuffer** %4, align 8
  %29 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %58

32:                                               ; preds = %27
  %33 = load %struct.eerbuffer*, %struct.eerbuffer** %4, align 8
  %34 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.eerbuffer*, %struct.eerbuffer** %4, align 8
  %37 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.eerbuffer*, %struct.eerbuffer** %4, align 8
  %41 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.eerbuffer*, %struct.eerbuffer** %4, align 8
  %44 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sge i32 %42, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %32
  %48 = load %struct.eerbuffer*, %struct.eerbuffer** %4, align 8
  %49 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.eerbuffer*, %struct.eerbuffer** %4, align 8
  %52 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %47, %32
  %56 = load %struct.eerbuffer*, %struct.eerbuffer** %4, align 8
  %57 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %56, i32 0, i32 1
  store i32 -1, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %27
  %59 = load %struct.eerbuffer*, %struct.eerbuffer** %4, align 8
  %60 = bitcast i32* %6 to i8*
  %61 = call i32 @dasd_eer_read_buffer(%struct.eerbuffer* %59, i8* %60, i32 4)
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.eerbuffer*, %struct.eerbuffer** %4, align 8
  %64 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load %struct.eerbuffer*, %struct.eerbuffer** %4, align 8
  %68 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.eerbuffer*, %struct.eerbuffer** %4, align 8
  %71 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp sge i32 %69, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %58
  %75 = load %struct.eerbuffer*, %struct.eerbuffer** %4, align 8
  %76 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.eerbuffer*, %struct.eerbuffer** %4, align 8
  %79 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %74, %58
  br label %19

83:                                               ; preds = %19
  %84 = load %struct.eerbuffer*, %struct.eerbuffer** %4, align 8
  %85 = bitcast i32* %5 to i8*
  %86 = call i32 @dasd_eer_write_buffer(%struct.eerbuffer* %84, i8* %85, i32 4)
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %83, %15
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @dasd_eer_get_free_bytes(%struct.eerbuffer*) #1

declare dso_local i32 @dasd_eer_read_buffer(%struct.eerbuffer*, i8*, i32) #1

declare dso_local i32 @dasd_eer_write_buffer(%struct.eerbuffer*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
