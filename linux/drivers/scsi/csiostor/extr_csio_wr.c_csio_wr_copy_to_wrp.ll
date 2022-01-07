; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_wr.c_csio_wr_copy_to_wrp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_wr.c_csio_wr_copy_to_wrp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_wr_pair = type { i32, i32, i8*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csio_wr_copy_to_wrp(i8* %0, %struct.csio_wr_pair* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.csio_wr_pair*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.csio_wr_pair* %1, %struct.csio_wr_pair** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.csio_wr_pair*, %struct.csio_wr_pair** %6, align 8
  %11 = getelementptr inbounds %struct.csio_wr_pair, %struct.csio_wr_pair* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sub nsw i32 %12, %13
  %15 = load i32, i32* %8, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  br label %25

19:                                               ; preds = %4
  %20 = load %struct.csio_wr_pair*, %struct.csio_wr_pair** %6, align 8
  %21 = getelementptr inbounds %struct.csio_wr_pair, %struct.csio_wr_pair* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sub nsw i32 %22, %23
  br label %25

25:                                               ; preds = %19, %17
  %26 = phi i32 [ %18, %17 ], [ %24, %19 ]
  store i32 %26, i32* %9, align 4
  %27 = load %struct.csio_wr_pair*, %struct.csio_wr_pair** %6, align 8
  %28 = getelementptr inbounds %struct.csio_wr_pair, %struct.csio_wr_pair* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr i8, i8* %30, i64 %32
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @memcpy(i8* %33, i8* %34, i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = sub nsw i32 %38, %37
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %65

42:                                               ; preds = %25
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.csio_wr_pair*, %struct.csio_wr_pair** %6, align 8
  %45 = getelementptr inbounds %struct.csio_wr_pair, %struct.csio_wr_pair* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp sle i32 %43, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @CSIO_DB_ASSERT(i32 %48)
  %50 = load %struct.csio_wr_pair*, %struct.csio_wr_pair** %6, align 8
  %51 = getelementptr inbounds %struct.csio_wr_pair, %struct.csio_wr_pair* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 @CSIO_DB_ASSERT(i32 %54)
  %56 = load %struct.csio_wr_pair*, %struct.csio_wr_pair** %6, align 8
  %57 = getelementptr inbounds %struct.csio_wr_pair, %struct.csio_wr_pair* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr i8, i8* %59, i64 %61
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @memcpy(i8* %58, i8* %62, i32 %63)
  br label %65

65:                                               ; preds = %42, %25
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @CSIO_DB_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
