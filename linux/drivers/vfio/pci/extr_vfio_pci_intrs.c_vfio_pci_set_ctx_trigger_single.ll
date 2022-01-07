; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_intrs.c_vfio_pci_set_ctx_trigger_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_intrs.c_vfio_pci_set_ctx_trigger_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eventfd_ctx = type { i32 }

@VFIO_IRQ_SET_DATA_NONE = common dso_local global i32 0, align 4
@VFIO_IRQ_SET_DATA_BOOL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VFIO_IRQ_SET_DATA_EVENTFD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eventfd_ctx**, i32, i32, i8*)* @vfio_pci_set_ctx_trigger_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_pci_set_ctx_trigger_single(%struct.eventfd_ctx** %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.eventfd_ctx**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.eventfd_ctx*, align 8
  store %struct.eventfd_ctx** %0, %struct.eventfd_ctx*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @VFIO_IRQ_SET_DATA_NONE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %4
  %18 = load %struct.eventfd_ctx**, %struct.eventfd_ctx*** %6, align 8
  %19 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %18, align 8
  %20 = icmp ne %struct.eventfd_ctx* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load %struct.eventfd_ctx**, %struct.eventfd_ctx*** %6, align 8
  %26 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %25, align 8
  %27 = call i32 @eventfd_signal(%struct.eventfd_ctx* %26, i32 1)
  br label %33

28:                                               ; preds = %21
  %29 = load %struct.eventfd_ctx**, %struct.eventfd_ctx*** %6, align 8
  %30 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %29, align 8
  %31 = call i32 @eventfd_ctx_put(%struct.eventfd_ctx* %30)
  %32 = load %struct.eventfd_ctx**, %struct.eventfd_ctx*** %6, align 8
  store %struct.eventfd_ctx* null, %struct.eventfd_ctx** %32, align 8
  br label %33

33:                                               ; preds = %28, %24
  store i32 0, i32* %5, align 4
  br label %118

34:                                               ; preds = %17
  br label %115

35:                                               ; preds = %4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @VFIO_IRQ_SET_DATA_BOOL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %35
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %118

46:                                               ; preds = %40
  %47 = load i8*, i8** %9, align 8
  %48 = bitcast i8* %47 to i64*
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %10, align 8
  %50 = load i64, i64* %10, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load %struct.eventfd_ctx**, %struct.eventfd_ctx*** %6, align 8
  %54 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %53, align 8
  %55 = icmp ne %struct.eventfd_ctx* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load %struct.eventfd_ctx**, %struct.eventfd_ctx*** %6, align 8
  %58 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %57, align 8
  %59 = call i32 @eventfd_signal(%struct.eventfd_ctx* %58, i32 1)
  br label %60

60:                                               ; preds = %56, %52, %46
  store i32 0, i32* %5, align 4
  br label %118

61:                                               ; preds = %35
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @VFIO_IRQ_SET_DATA_EVENTFD, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %113

66:                                               ; preds = %61
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %118

72:                                               ; preds = %66
  %73 = load i8*, i8** %9, align 8
  %74 = bitcast i8* %73 to i32*
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %88

78:                                               ; preds = %72
  %79 = load %struct.eventfd_ctx**, %struct.eventfd_ctx*** %6, align 8
  %80 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %79, align 8
  %81 = icmp ne %struct.eventfd_ctx* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load %struct.eventfd_ctx**, %struct.eventfd_ctx*** %6, align 8
  %84 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %83, align 8
  %85 = call i32 @eventfd_ctx_put(%struct.eventfd_ctx* %84)
  br label %86

86:                                               ; preds = %82, %78
  %87 = load %struct.eventfd_ctx**, %struct.eventfd_ctx*** %6, align 8
  store %struct.eventfd_ctx* null, %struct.eventfd_ctx** %87, align 8
  br label %112

88:                                               ; preds = %72
  %89 = load i32, i32* %11, align 4
  %90 = icmp sge i32 %89, 0
  br i1 %90, label %91, label %111

91:                                               ; preds = %88
  %92 = load i32, i32* %11, align 4
  %93 = call %struct.eventfd_ctx* @eventfd_ctx_fdget(i32 %92)
  store %struct.eventfd_ctx* %93, %struct.eventfd_ctx** %12, align 8
  %94 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %12, align 8
  %95 = call i64 @IS_ERR(%struct.eventfd_ctx* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %12, align 8
  %99 = call i32 @PTR_ERR(%struct.eventfd_ctx* %98)
  store i32 %99, i32* %5, align 4
  br label %118

100:                                              ; preds = %91
  %101 = load %struct.eventfd_ctx**, %struct.eventfd_ctx*** %6, align 8
  %102 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %101, align 8
  %103 = icmp ne %struct.eventfd_ctx* %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load %struct.eventfd_ctx**, %struct.eventfd_ctx*** %6, align 8
  %106 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %105, align 8
  %107 = call i32 @eventfd_ctx_put(%struct.eventfd_ctx* %106)
  br label %108

108:                                              ; preds = %104, %100
  %109 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %12, align 8
  %110 = load %struct.eventfd_ctx**, %struct.eventfd_ctx*** %6, align 8
  store %struct.eventfd_ctx* %109, %struct.eventfd_ctx** %110, align 8
  br label %111

111:                                              ; preds = %108, %88
  br label %112

112:                                              ; preds = %111, %86
  store i32 0, i32* %5, align 4
  br label %118

113:                                              ; preds = %61
  br label %114

114:                                              ; preds = %113
  br label %115

115:                                              ; preds = %114, %34
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %115, %112, %97, %69, %60, %43, %33
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @eventfd_signal(%struct.eventfd_ctx*, i32) #1

declare dso_local i32 @eventfd_ctx_put(%struct.eventfd_ctx*) #1

declare dso_local %struct.eventfd_ctx* @eventfd_ctx_fdget(i32) #1

declare dso_local i64 @IS_ERR(%struct.eventfd_ctx*) #1

declare dso_local i32 @PTR_ERR(%struct.eventfd_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
