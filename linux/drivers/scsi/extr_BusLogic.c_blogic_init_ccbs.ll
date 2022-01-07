; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_BusLogic.c_blogic_init_ccbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_BusLogic.c_blogic_init_ccbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blogic_adapter = type { i32, %struct.blogic_ccb*, %struct.blogic_ccb*, %struct.TYPE_2__ }
%struct.blogic_ccb = type { i32, %struct.blogic_ccb*, %struct.blogic_ccb*, i32, i32, i64, %struct.blogic_adapter*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@BLOGIC_CCB_FREE = common dso_local global i32 0, align 4
@blogic_qcompleted_ccb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blogic_adapter*, i8*, i32, i64)* @blogic_init_ccbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blogic_init_ccbs(%struct.blogic_adapter* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.blogic_adapter*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.blogic_ccb*, align 8
  %10 = alloca i32, align 4
  store %struct.blogic_adapter* %0, %struct.blogic_adapter** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.blogic_ccb*
  store %struct.blogic_ccb* %12, %struct.blogic_ccb** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @memset(i8* %13, i32 0, i32 %14)
  %16 = load i64, i64* %8, align 8
  %17 = load %struct.blogic_ccb*, %struct.blogic_ccb** %9, align 8
  %18 = getelementptr inbounds %struct.blogic_ccb, %struct.blogic_ccb* %17, i32 0, i32 8
  store i64 %16, i64* %18, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.blogic_ccb*, %struct.blogic_ccb** %9, align 8
  %21 = getelementptr inbounds %struct.blogic_ccb, %struct.blogic_ccb* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  br label %22

22:                                               ; preds = %54, %4
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = sub i64 %24, 64
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %7, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %81

28:                                               ; preds = %22
  %29 = load i32, i32* @BLOGIC_CCB_FREE, align 4
  %30 = load %struct.blogic_ccb*, %struct.blogic_ccb** %9, align 8
  %31 = getelementptr inbounds %struct.blogic_ccb, %struct.blogic_ccb* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 8
  %32 = load %struct.blogic_adapter*, %struct.blogic_adapter** %5, align 8
  %33 = load %struct.blogic_ccb*, %struct.blogic_ccb** %9, align 8
  %34 = getelementptr inbounds %struct.blogic_ccb, %struct.blogic_ccb* %33, i32 0, i32 6
  store %struct.blogic_adapter* %32, %struct.blogic_adapter** %34, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i32, i32* %10, align 4
  %37 = zext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = load %struct.blogic_ccb*, %struct.blogic_ccb** %9, align 8
  %40 = getelementptr inbounds %struct.blogic_ccb, %struct.blogic_ccb* %39, i32 0, i32 5
  store i64 %38, i64* %40, align 8
  %41 = load %struct.blogic_adapter*, %struct.blogic_adapter** %5, align 8
  %42 = call i64 @blogic_flashpoint_type(%struct.blogic_adapter* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %28
  %45 = load i32, i32* @blogic_qcompleted_ccb, align 4
  %46 = load %struct.blogic_ccb*, %struct.blogic_ccb** %9, align 8
  %47 = getelementptr inbounds %struct.blogic_ccb, %struct.blogic_ccb* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  %48 = load %struct.blogic_adapter*, %struct.blogic_adapter** %5, align 8
  %49 = getelementptr inbounds %struct.blogic_adapter, %struct.blogic_adapter* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.blogic_ccb*, %struct.blogic_ccb** %9, align 8
  %53 = getelementptr inbounds %struct.blogic_ccb, %struct.blogic_ccb* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %44, %28
  %55 = load %struct.blogic_adapter*, %struct.blogic_adapter** %5, align 8
  %56 = getelementptr inbounds %struct.blogic_adapter, %struct.blogic_adapter* %55, i32 0, i32 2
  %57 = load %struct.blogic_ccb*, %struct.blogic_ccb** %56, align 8
  %58 = load %struct.blogic_ccb*, %struct.blogic_ccb** %9, align 8
  %59 = getelementptr inbounds %struct.blogic_ccb, %struct.blogic_ccb* %58, i32 0, i32 2
  store %struct.blogic_ccb* %57, %struct.blogic_ccb** %59, align 8
  %60 = load %struct.blogic_adapter*, %struct.blogic_adapter** %5, align 8
  %61 = getelementptr inbounds %struct.blogic_adapter, %struct.blogic_adapter* %60, i32 0, i32 1
  %62 = load %struct.blogic_ccb*, %struct.blogic_ccb** %61, align 8
  %63 = load %struct.blogic_ccb*, %struct.blogic_ccb** %9, align 8
  %64 = getelementptr inbounds %struct.blogic_ccb, %struct.blogic_ccb* %63, i32 0, i32 1
  store %struct.blogic_ccb* %62, %struct.blogic_ccb** %64, align 8
  %65 = load %struct.blogic_ccb*, %struct.blogic_ccb** %9, align 8
  %66 = load %struct.blogic_adapter*, %struct.blogic_adapter** %5, align 8
  %67 = getelementptr inbounds %struct.blogic_adapter, %struct.blogic_adapter* %66, i32 0, i32 2
  store %struct.blogic_ccb* %65, %struct.blogic_ccb** %67, align 8
  %68 = load %struct.blogic_ccb*, %struct.blogic_ccb** %9, align 8
  %69 = load %struct.blogic_adapter*, %struct.blogic_adapter** %5, align 8
  %70 = getelementptr inbounds %struct.blogic_adapter, %struct.blogic_adapter* %69, i32 0, i32 1
  store %struct.blogic_ccb* %68, %struct.blogic_ccb** %70, align 8
  %71 = load %struct.blogic_adapter*, %struct.blogic_adapter** %5, align 8
  %72 = getelementptr inbounds %struct.blogic_adapter, %struct.blogic_adapter* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  %75 = load %struct.blogic_ccb*, %struct.blogic_ccb** %9, align 8
  %76 = getelementptr inbounds %struct.blogic_ccb, %struct.blogic_ccb* %75, i32 1
  store %struct.blogic_ccb* %76, %struct.blogic_ccb** %9, align 8
  %77 = load i32, i32* %10, align 4
  %78 = zext i32 %77 to i64
  %79 = add i64 %78, 64
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %10, align 4
  br label %22

81:                                               ; preds = %22
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @blogic_flashpoint_type(%struct.blogic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
