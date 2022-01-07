; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_flash.c_esas2r_print_flash_rev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_flash.c_esas2r_print_flash_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32, i64 }

@.str = private unnamed_addr constant [10 x i8] c"not found\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%02d/%02d/%04d\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"flash version: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esas2r_print_flash_rev(%struct.esas2r_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %3, align 8
  %7 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @LOWORD(i64 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @HIWORD(i64 %13)
  %15 = call i32 @LOBYTE(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @HIWORD(i64 %18)
  %20 = call i32 @HIBYTE(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = icmp sgt i32 %27, 31
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = icmp sgt i32 %30, 12
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 2006
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = icmp sgt i32 %36, 9999
  br i1 %37, label %38, label %45

38:                                               ; preds = %35, %32, %29, %26, %23, %1
  %39 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @strcpy(i32 %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  store i32 0, i32* %2, align 4
  br label %57

45:                                               ; preds = %35
  %46 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %47 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @sprintf(i32 %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %50, i32 %51)
  %53 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %54 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @esas2r_hdebug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  store i32 1, i32* %2, align 4
  br label %57

57:                                               ; preds = %45, %38
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @LOWORD(i64) #1

declare dso_local i32 @LOBYTE(i32) #1

declare dso_local i32 @HIWORD(i64) #1

declare dso_local i32 @HIBYTE(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @sprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @esas2r_hdebug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
