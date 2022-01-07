; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-front.c___write_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-front.c___write_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvcalls_data_intf = type { i64, i64, i64 }
%struct.pvcalls_data = type { i64 }
%struct.iov_iter = type { i32 }

@PVCALLS_RING_ORDER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvcalls_data_intf*, %struct.pvcalls_data*, %struct.iov_iter*, i32)* @__write_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__write_ring(%struct.pvcalls_data_intf* %0, %struct.pvcalls_data* %1, %struct.iov_iter* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pvcalls_data_intf*, align 8
  %7 = alloca %struct.pvcalls_data*, align 8
  %8 = alloca %struct.iov_iter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.pvcalls_data_intf* %0, %struct.pvcalls_data_intf** %6, align 8
  store %struct.pvcalls_data* %1, %struct.pvcalls_data** %7, align 8
  store %struct.iov_iter* %2, %struct.iov_iter** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* @PVCALLS_RING_ORDER, align 4
  %19 = call i64 @XEN_FLEX_RING_SIZE(i32 %18)
  store i64 %19, i64* %15, align 8
  %20 = load %struct.pvcalls_data_intf*, %struct.pvcalls_data_intf** %6, align 8
  %21 = getelementptr inbounds %struct.pvcalls_data_intf, %struct.pvcalls_data_intf* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %16, align 8
  %23 = load i64, i64* %16, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i64, i64* %16, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %5, align 4
  br label %140

28:                                               ; preds = %4
  %29 = load %struct.pvcalls_data_intf*, %struct.pvcalls_data_intf** %6, align 8
  %30 = getelementptr inbounds %struct.pvcalls_data_intf, %struct.pvcalls_data_intf* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %10, align 8
  %32 = load %struct.pvcalls_data_intf*, %struct.pvcalls_data_intf** %6, align 8
  %33 = getelementptr inbounds %struct.pvcalls_data_intf, %struct.pvcalls_data_intf* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %11, align 8
  %35 = call i32 (...) @virt_mb()
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %15, align 8
  %39 = call i64 @pvcalls_queued(i64 %36, i64 %37, i64 %38)
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* %15, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %28
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %140

46:                                               ; preds = %28
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* %15, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %140

51:                                               ; preds = %46
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %15, align 8
  %55 = load i64, i64* %12, align 8
  %56 = sub nsw i64 %54, %55
  %57 = icmp sgt i64 %53, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load i64, i64* %15, align 8
  %60 = load i64, i64* %12, align 8
  %61 = sub nsw i64 %59, %60
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %58, %51
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* %15, align 8
  %66 = call i64 @pvcalls_mask(i64 %64, i64 %65)
  store i64 %66, i64* %13, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %15, align 8
  %69 = call i64 @pvcalls_mask(i64 %67, i64 %68)
  store i64 %69, i64* %14, align 8
  %70 = load i64, i64* %13, align 8
  %71 = load i64, i64* %14, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %63
  %74 = load %struct.pvcalls_data*, %struct.pvcalls_data** %7, align 8
  %75 = getelementptr inbounds %struct.pvcalls_data, %struct.pvcalls_data* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %13, align 8
  %78 = add nsw i64 %76, %77
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.iov_iter*, %struct.iov_iter** %8, align 8
  %81 = call i32 @copy_from_iter(i64 %78, i32 %79, %struct.iov_iter* %80)
  store i32 %81, i32* %9, align 4
  br label %130

82:                                               ; preds = %63
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %15, align 8
  %86 = load i64, i64* %13, align 8
  %87 = sub nsw i64 %85, %86
  %88 = icmp sgt i64 %84, %87
  br i1 %88, label %89, label %120

89:                                               ; preds = %82
  %90 = load %struct.pvcalls_data*, %struct.pvcalls_data** %7, align 8
  %91 = getelementptr inbounds %struct.pvcalls_data, %struct.pvcalls_data* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %13, align 8
  %94 = add nsw i64 %92, %93
  %95 = load i64, i64* %15, align 8
  %96 = load i64, i64* %13, align 8
  %97 = sub nsw i64 %95, %96
  %98 = trunc i64 %97 to i32
  %99 = load %struct.iov_iter*, %struct.iov_iter** %8, align 8
  %100 = call i32 @copy_from_iter(i64 %94, i32 %98, %struct.iov_iter* %99)
  store i32 %100, i32* %17, align 4
  %101 = load i32, i32* %17, align 4
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* %15, align 8
  %104 = load i64, i64* %13, align 8
  %105 = sub nsw i64 %103, %104
  %106 = icmp ne i64 %102, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %89
  %108 = load i32, i32* %17, align 4
  store i32 %108, i32* %9, align 4
  br label %131

109:                                              ; preds = %89
  %110 = load i32, i32* %17, align 4
  %111 = load %struct.pvcalls_data*, %struct.pvcalls_data** %7, align 8
  %112 = getelementptr inbounds %struct.pvcalls_data, %struct.pvcalls_data* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %17, align 4
  %116 = sub nsw i32 %114, %115
  %117 = load %struct.iov_iter*, %struct.iov_iter** %8, align 8
  %118 = call i32 @copy_from_iter(i64 %113, i32 %116, %struct.iov_iter* %117)
  %119 = add nsw i32 %110, %118
  store i32 %119, i32* %9, align 4
  br label %129

120:                                              ; preds = %82
  %121 = load %struct.pvcalls_data*, %struct.pvcalls_data** %7, align 8
  %122 = getelementptr inbounds %struct.pvcalls_data, %struct.pvcalls_data* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %13, align 8
  %125 = add nsw i64 %123, %124
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.iov_iter*, %struct.iov_iter** %8, align 8
  %128 = call i32 @copy_from_iter(i64 %125, i32 %126, %struct.iov_iter* %127)
  store i32 %128, i32* %9, align 4
  br label %129

129:                                              ; preds = %120, %109
  br label %130

130:                                              ; preds = %129, %73
  br label %131

131:                                              ; preds = %130, %107
  %132 = call i32 (...) @virt_wmb()
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = load %struct.pvcalls_data_intf*, %struct.pvcalls_data_intf** %6, align 8
  %136 = getelementptr inbounds %struct.pvcalls_data_intf, %struct.pvcalls_data_intf* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %137, %134
  store i64 %138, i64* %136, align 8
  %139 = load i32, i32* %9, align 4
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %131, %50, %43, %25
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i64 @XEN_FLEX_RING_SIZE(i32) #1

declare dso_local i32 @virt_mb(...) #1

declare dso_local i64 @pvcalls_queued(i64, i64, i64) #1

declare dso_local i64 @pvcalls_mask(i64, i64) #1

declare dso_local i32 @copy_from_iter(i64, i32, %struct.iov_iter*) #1

declare dso_local i32 @virt_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
