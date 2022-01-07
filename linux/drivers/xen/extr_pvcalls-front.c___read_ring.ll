; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-front.c___read_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-front.c___read_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvcalls_data_intf = type { i32, i32, i64 }
%struct.pvcalls_data = type { i32 }
%struct.iov_iter = type { i32 }

@PVCALLS_RING_ORDER = common dso_local global i32 0, align 4
@MSG_PEEK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvcalls_data_intf*, %struct.pvcalls_data*, %struct.iov_iter*, i64, i32)* @__read_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__read_ring(%struct.pvcalls_data_intf* %0, %struct.pvcalls_data* %1, %struct.iov_iter* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pvcalls_data_intf*, align 8
  %8 = alloca %struct.pvcalls_data*, align 8
  %9 = alloca %struct.iov_iter*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.pvcalls_data_intf* %0, %struct.pvcalls_data_intf** %7, align 8
  store %struct.pvcalls_data* %1, %struct.pvcalls_data** %8, align 8
  store %struct.iov_iter* %2, %struct.iov_iter** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load i32, i32* @PVCALLS_RING_ORDER, align 4
  %21 = call i32 @XEN_FLEX_RING_SIZE(i32 %20)
  store i32 %21, i32* %17, align 4
  %22 = load %struct.pvcalls_data_intf*, %struct.pvcalls_data_intf** %7, align 8
  %23 = getelementptr inbounds %struct.pvcalls_data_intf, %struct.pvcalls_data_intf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %12, align 4
  %25 = load %struct.pvcalls_data_intf*, %struct.pvcalls_data_intf** %7, align 8
  %26 = getelementptr inbounds %struct.pvcalls_data_intf, %struct.pvcalls_data_intf* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %13, align 4
  %28 = load %struct.pvcalls_data_intf*, %struct.pvcalls_data_intf** %7, align 8
  %29 = getelementptr inbounds %struct.pvcalls_data_intf, %struct.pvcalls_data_intf* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %18, align 8
  %31 = call i32 (...) @virt_rmb()
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %17, align 4
  %35 = call i32 @pvcalls_queued(i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %17, align 4
  %38 = call i32 @pvcalls_mask(i32 %36, i32 %37)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %17, align 4
  %41 = call i32 @pvcalls_mask(i32 %39, i32 %40)
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %5
  %45 = load i64, i64* %18, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %51

48:                                               ; preds = %44
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  br label %51

51:                                               ; preds = %48, %47
  %52 = phi i64 [ %45, %47 ], [ %50, %48 ]
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %6, align 4
  br label %145

54:                                               ; preds = %5
  %55 = load i64, i64* %10, align 8
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = icmp ugt i64 %55, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %10, align 8
  br label %62

62:                                               ; preds = %59, %54
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %62
  %67 = load %struct.pvcalls_data*, %struct.pvcalls_data** %8, align 8
  %68 = getelementptr inbounds %struct.pvcalls_data, %struct.pvcalls_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %16, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i64, i64* %10, align 8
  %73 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %74 = call i32 @copy_to_iter(i32 %71, i64 %72, %struct.iov_iter* %73)
  %75 = sext i32 %74 to i64
  store i64 %75, i64* %10, align 8
  br label %127

76:                                               ; preds = %62
  %77 = load i64, i64* %10, align 8
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* %16, align 4
  %80 = sub nsw i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = icmp ugt i64 %77, %81
  br i1 %82, label %83, label %116

83:                                               ; preds = %76
  %84 = load %struct.pvcalls_data*, %struct.pvcalls_data** %8, align 8
  %85 = getelementptr inbounds %struct.pvcalls_data, %struct.pvcalls_data* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %16, align 4
  %88 = add nsw i32 %86, %87
  %89 = load i32, i32* %17, align 4
  %90 = load i32, i32* %16, align 4
  %91 = sub nsw i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %94 = call i32 @copy_to_iter(i32 %88, i64 %92, %struct.iov_iter* %93)
  store i32 %94, i32* %19, align 4
  %95 = load i32, i32* %19, align 4
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* %16, align 4
  %98 = sub nsw i32 %96, %97
  %99 = icmp ne i32 %95, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %83
  %101 = load i32, i32* %19, align 4
  %102 = sext i32 %101 to i64
  store i64 %102, i64* %10, align 8
  br label %128

103:                                              ; preds = %83
  %104 = load i32, i32* %19, align 4
  %105 = load %struct.pvcalls_data*, %struct.pvcalls_data** %8, align 8
  %106 = getelementptr inbounds %struct.pvcalls_data, %struct.pvcalls_data* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i64, i64* %10, align 8
  %109 = load i32, i32* %19, align 4
  %110 = sext i32 %109 to i64
  %111 = sub i64 %108, %110
  %112 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %113 = call i32 @copy_to_iter(i32 %107, i64 %111, %struct.iov_iter* %112)
  %114 = add nsw i32 %104, %113
  %115 = sext i32 %114 to i64
  store i64 %115, i64* %10, align 8
  br label %126

116:                                              ; preds = %76
  %117 = load %struct.pvcalls_data*, %struct.pvcalls_data** %8, align 8
  %118 = getelementptr inbounds %struct.pvcalls_data, %struct.pvcalls_data* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %16, align 4
  %121 = add nsw i32 %119, %120
  %122 = load i64, i64* %10, align 8
  %123 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %124 = call i32 @copy_to_iter(i32 %121, i64 %122, %struct.iov_iter* %123)
  %125 = sext i32 %124 to i64
  store i64 %125, i64* %10, align 8
  br label %126

126:                                              ; preds = %116, %103
  br label %127

127:                                              ; preds = %126, %66
  br label %128

128:                                              ; preds = %127, %100
  %129 = call i32 (...) @virt_mb()
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* @MSG_PEEK, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %142, label %134

134:                                              ; preds = %128
  %135 = load i64, i64* %10, align 8
  %136 = load %struct.pvcalls_data_intf*, %struct.pvcalls_data_intf** %7, align 8
  %137 = getelementptr inbounds %struct.pvcalls_data_intf, %struct.pvcalls_data_intf* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = add i64 %139, %135
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %137, align 8
  br label %142

142:                                              ; preds = %134, %128
  %143 = load i64, i64* %10, align 8
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %6, align 4
  br label %145

145:                                              ; preds = %142, %51
  %146 = load i32, i32* %6, align 4
  ret i32 %146
}

declare dso_local i32 @XEN_FLEX_RING_SIZE(i32) #1

declare dso_local i32 @virt_rmb(...) #1

declare dso_local i32 @pvcalls_queued(i32, i32, i32) #1

declare dso_local i32 @pvcalls_mask(i32, i32) #1

declare dso_local i32 @copy_to_iter(i32, i64, %struct.iov_iter*) #1

declare dso_local i32 @virt_mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
