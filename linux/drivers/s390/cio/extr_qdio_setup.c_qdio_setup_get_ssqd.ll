; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_setup.c_qdio_setup_get_ssqd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_setup.c_qdio_setup_get_ssqd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_irq = type { i64 }
%struct.subchannel_id = type { i64 }
%struct.qdio_ssqd_desc = type { i32 }
%struct.chsc_ssqd_area = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [12 x i8] c"getssqd:%4x\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CHSC_FLAG_QDIO_CAPABILITY = common dso_local global i32 0, align 4
@CHSC_FLAG_VALIDITY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qdio_setup_get_ssqd(%struct.qdio_irq* %0, %struct.subchannel_id* %1, %struct.qdio_ssqd_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qdio_irq*, align 8
  %6 = alloca %struct.subchannel_id*, align 8
  %7 = alloca %struct.qdio_ssqd_desc*, align 8
  %8 = alloca %struct.chsc_ssqd_area*, align 8
  %9 = alloca i32, align 4
  store %struct.qdio_irq* %0, %struct.qdio_irq** %5, align 8
  store %struct.subchannel_id* %1, %struct.subchannel_id** %6, align 8
  store %struct.qdio_ssqd_desc* %2, %struct.qdio_ssqd_desc** %7, align 8
  %10 = load %struct.subchannel_id*, %struct.subchannel_id** %6, align 8
  %11 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @DBF_EVENT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %15 = icmp ne %struct.qdio_irq* %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i64 @__get_free_page(i32 %17)
  %19 = inttoptr i64 %18 to %struct.chsc_ssqd_area*
  store %struct.chsc_ssqd_area* %19, %struct.chsc_ssqd_area** %8, align 8
  %20 = load %struct.chsc_ssqd_area*, %struct.chsc_ssqd_area** %8, align 8
  %21 = icmp ne %struct.chsc_ssqd_area* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %86

25:                                               ; preds = %16
  br label %31

26:                                               ; preds = %3
  %27 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %28 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.chsc_ssqd_area*
  store %struct.chsc_ssqd_area* %30, %struct.chsc_ssqd_area** %8, align 8
  br label %31

31:                                               ; preds = %26, %25
  %32 = load %struct.subchannel_id*, %struct.subchannel_id** %6, align 8
  %33 = load %struct.chsc_ssqd_area*, %struct.chsc_ssqd_area** %8, align 8
  %34 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %32, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @chsc_ssqd(i64 %35, %struct.chsc_ssqd_area* %33)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %77

40:                                               ; preds = %31
  %41 = load %struct.chsc_ssqd_area*, %struct.chsc_ssqd_area** %8, align 8
  %42 = getelementptr inbounds %struct.chsc_ssqd_area, %struct.chsc_ssqd_area* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @CHSC_FLAG_QDIO_CAPABILITY, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %40
  %49 = load %struct.chsc_ssqd_area*, %struct.chsc_ssqd_area** %8, align 8
  %50 = getelementptr inbounds %struct.chsc_ssqd_area, %struct.chsc_ssqd_area* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @CHSC_FLAG_VALIDITY, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %48
  %57 = load %struct.chsc_ssqd_area*, %struct.chsc_ssqd_area** %8, align 8
  %58 = getelementptr inbounds %struct.chsc_ssqd_area, %struct.chsc_ssqd_area* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.subchannel_id*, %struct.subchannel_id** %6, align 8
  %62 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %60, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %56, %48, %40
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %65, %56
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %68
  %72 = load %struct.qdio_ssqd_desc*, %struct.qdio_ssqd_desc** %7, align 8
  %73 = load %struct.chsc_ssqd_area*, %struct.chsc_ssqd_area** %8, align 8
  %74 = getelementptr inbounds %struct.chsc_ssqd_area, %struct.chsc_ssqd_area* %73, i32 0, i32 0
  %75 = call i32 @memcpy(%struct.qdio_ssqd_desc* %72, %struct.TYPE_2__* %74, i32 4)
  br label %76

76:                                               ; preds = %71, %68
  br label %77

77:                                               ; preds = %76, %39
  %78 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %79 = icmp ne %struct.qdio_irq* %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %77
  %81 = load %struct.chsc_ssqd_area*, %struct.chsc_ssqd_area** %8, align 8
  %82 = ptrtoint %struct.chsc_ssqd_area* %81 to i64
  %83 = call i32 @free_page(i64 %82)
  br label %84

84:                                               ; preds = %80, %77
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %84, %22
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @DBF_EVENT(i8*, i64) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @chsc_ssqd(i64, %struct.chsc_ssqd_area*) #1

declare dso_local i32 @memcpy(%struct.qdio_ssqd_desc*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
