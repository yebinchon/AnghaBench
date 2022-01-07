; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_adapter_init_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_adapter_init_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterCtlBlk = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i64, i64*, %struct.TYPE_3__*, i64, i64, i32, i32, i32, i32, i32*, i32*, i32*, i32, %struct.NvRamType }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.NvRamType = type { i32, i32, i32 }

@waiting_timeout = common dso_local global i32* null, align 8
@DC395x_MAX_SRB_CNT = common dso_local global i32 0, align 4
@DC395x_SEL_TIMEOUT = common dso_local global i32 0, align 4
@NAC_SCANLUN = common dso_local global i32 0, align 4
@DC395x_MAX_SCSI_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterCtlBlk*)* @adapter_init_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adapter_init_params(%struct.AdapterCtlBlk* %0) #0 {
  %2 = alloca %struct.AdapterCtlBlk*, align 8
  %3 = alloca %struct.NvRamType*, align 8
  %4 = alloca i32, align 4
  store %struct.AdapterCtlBlk* %0, %struct.AdapterCtlBlk** %2, align 8
  %5 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %6 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %5, i32 0, i32 21
  store %struct.NvRamType* %6, %struct.NvRamType** %3, align 8
  %7 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %8 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %7, i32 0, i32 20
  %9 = call i32 @INIT_LIST_HEAD(i32* %8)
  %10 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %11 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %10, i32 0, i32 19
  store i32* null, i32** %11, align 8
  %12 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %13 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %12, i32 0, i32 18
  store i32* null, i32** %13, align 8
  %14 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %15 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %14, i32 0, i32 6
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %18 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %17, i32 0, i32 16
  %19 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %20 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %19, i32 0, i32 17
  store i32* %18, i32** %20, align 8
  %21 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %22 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %21, i32 0, i32 15
  %23 = load i32*, i32** @waiting_timeout, align 8
  %24 = call i32 @timer_setup(i32* %22, i32* %23, i32 0)
  %25 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %26 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %25, i32 0, i32 14
  %27 = call i32 @timer_setup(i32* %26, i32* null, i32 0)
  %28 = load i32, i32* @DC395x_MAX_SRB_CNT, align 4
  %29 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %30 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @DC395x_SEL_TIMEOUT, align 4
  %32 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %33 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %32, i32 0, i32 13
  store i32 %31, i32* %33, align 8
  %34 = load %struct.NvRamType*, %struct.NvRamType** %3, align 8
  %35 = getelementptr inbounds %struct.NvRamType, %struct.NvRamType* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 1, %36
  %38 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %39 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %41 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %42, 30
  br i1 %43, label %44, label %47

44:                                               ; preds = %1
  %45 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %46 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %45, i32 0, i32 1
  store i32 30, i32* %46, align 4
  br label %47

47:                                               ; preds = %44, %1
  %48 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %49 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %48, i32 0, i32 12
  store i64 0, i64* %49, align 8
  %50 = load %struct.NvRamType*, %struct.NvRamType** %3, align 8
  %51 = getelementptr inbounds %struct.NvRamType, %struct.NvRamType* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %54 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %56 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %55, i32 0, i32 11
  store i64 0, i64* %56, align 8
  %57 = load %struct.NvRamType*, %struct.NvRamType** %3, align 8
  %58 = getelementptr inbounds %struct.NvRamType, %struct.NvRamType* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @NAC_SCANLUN, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %47
  %64 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %65 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %64, i32 0, i32 3
  store i32 1, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %47
  %67 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %68 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %67, i32 0, i32 4
  store i32 1, i32* %68, align 8
  %69 = load %struct.NvRamType*, %struct.NvRamType** %3, align 8
  %70 = getelementptr inbounds %struct.NvRamType, %struct.NvRamType* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %73 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %72, i32 0, i32 10
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i32 %71, i32* %75, align 4
  %76 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %77 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %76, i32 0, i32 10
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 1, %80
  %82 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %83 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 4
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %95, %66
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @DC395x_MAX_SCSI_ID, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %84
  %89 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %90 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %89, i32 0, i32 9
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  store i64 0, i64* %94, align 8
  br label %95

95:                                               ; preds = %88
  %96 = load i32, i32* %4, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %4, align 4
  br label %84

98:                                               ; preds = %84
  %99 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %100 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %99, i32 0, i32 8
  store i64 0, i64* %100, align 8
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %119, %98
  %102 = load i32, i32* %4, align 4
  %103 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %104 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sub nsw i32 %105, 1
  %107 = icmp slt i32 %102, %106
  br i1 %107, label %108, label %122

108:                                              ; preds = %101
  %109 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %110 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %109, i32 0, i32 7
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %117 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %116, i32 0, i32 6
  %118 = call i32 @list_add_tail(i32* %115, i32* %117)
  br label %119

119:                                              ; preds = %108
  %120 = load i32, i32* %4, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %4, align 4
  br label %101

122:                                              ; preds = %101
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
