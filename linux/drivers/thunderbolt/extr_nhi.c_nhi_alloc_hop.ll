; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_nhi.c_nhi_alloc_hop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_nhi.c_nhi_alloc_hop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_nhi = type { i32, i32, %struct.tb_ring**, %struct.tb_ring**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.tb_ring = type { i32, i64 }

@RING_FIRST_USABLE_HOPID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"invalid hop: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"TX hop %d already allocated\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"RX hop %d already allocated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_nhi*, %struct.tb_ring*)* @nhi_alloc_hop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nhi_alloc_hop(%struct.tb_nhi* %0, %struct.tb_ring* %1) #0 {
  %3 = alloca %struct.tb_nhi*, align 8
  %4 = alloca %struct.tb_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tb_nhi* %0, %struct.tb_nhi** %3, align 8
  store %struct.tb_ring* %1, %struct.tb_ring** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.tb_nhi*, %struct.tb_nhi** %3, align 8
  %8 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %7, i32 0, i32 1
  %9 = call i32 @spin_lock_irq(i32* %8)
  %10 = load %struct.tb_ring*, %struct.tb_ring** %4, align 8
  %11 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ult i32 %12, 0
  br i1 %13, label %14, label %60

14:                                               ; preds = %2
  %15 = load i32, i32* @RING_FIRST_USABLE_HOPID, align 4
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %56, %14
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.tb_nhi*, %struct.tb_nhi** %3, align 8
  %19 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %59

22:                                               ; preds = %16
  %23 = load %struct.tb_ring*, %struct.tb_ring** %4, align 8
  %24 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = load %struct.tb_nhi*, %struct.tb_nhi** %3, align 8
  %29 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %28, i32 0, i32 3
  %30 = load %struct.tb_ring**, %struct.tb_ring*** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.tb_ring*, %struct.tb_ring** %30, i64 %32
  %34 = load %struct.tb_ring*, %struct.tb_ring** %33, align 8
  %35 = icmp ne %struct.tb_ring* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %27
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.tb_ring*, %struct.tb_ring** %4, align 8
  %39 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %59

40:                                               ; preds = %27
  br label %55

41:                                               ; preds = %22
  %42 = load %struct.tb_nhi*, %struct.tb_nhi** %3, align 8
  %43 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %42, i32 0, i32 2
  %44 = load %struct.tb_ring**, %struct.tb_ring*** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.tb_ring*, %struct.tb_ring** %44, i64 %46
  %48 = load %struct.tb_ring*, %struct.tb_ring** %47, align 8
  %49 = icmp ne %struct.tb_ring* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %41
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.tb_ring*, %struct.tb_ring** %4, align 8
  %53 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %59

54:                                               ; preds = %41
  br label %55

55:                                               ; preds = %54, %40
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %16

59:                                               ; preds = %50, %36, %16
  br label %60

60:                                               ; preds = %59, %2
  %61 = load %struct.tb_ring*, %struct.tb_ring** %4, align 8
  %62 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ult i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %60
  %66 = load %struct.tb_ring*, %struct.tb_ring** %4, align 8
  %67 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.tb_nhi*, %struct.tb_nhi** %3, align 8
  %70 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp uge i32 %68, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %65, %60
  %74 = load %struct.tb_nhi*, %struct.tb_nhi** %3, align 8
  %75 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %74, i32 0, i32 4
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load %struct.tb_ring*, %struct.tb_ring** %4, align 8
  %79 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @dev_warn(i32* %77, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  br label %165

84:                                               ; preds = %65
  %85 = load %struct.tb_ring*, %struct.tb_ring** %4, align 8
  %86 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %111

89:                                               ; preds = %84
  %90 = load %struct.tb_nhi*, %struct.tb_nhi** %3, align 8
  %91 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %90, i32 0, i32 3
  %92 = load %struct.tb_ring**, %struct.tb_ring*** %91, align 8
  %93 = load %struct.tb_ring*, %struct.tb_ring** %4, align 8
  %94 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.tb_ring*, %struct.tb_ring** %92, i64 %96
  %98 = load %struct.tb_ring*, %struct.tb_ring** %97, align 8
  %99 = icmp ne %struct.tb_ring* %98, null
  br i1 %99, label %100, label %111

100:                                              ; preds = %89
  %101 = load %struct.tb_nhi*, %struct.tb_nhi** %3, align 8
  %102 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %101, i32 0, i32 4
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load %struct.tb_ring*, %struct.tb_ring** %4, align 8
  %106 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @dev_warn(i32* %104, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* @EBUSY, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %5, align 4
  br label %165

111:                                              ; preds = %89, %84
  %112 = load %struct.tb_ring*, %struct.tb_ring** %4, align 8
  %113 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %138, label %116

116:                                              ; preds = %111
  %117 = load %struct.tb_nhi*, %struct.tb_nhi** %3, align 8
  %118 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %117, i32 0, i32 2
  %119 = load %struct.tb_ring**, %struct.tb_ring*** %118, align 8
  %120 = load %struct.tb_ring*, %struct.tb_ring** %4, align 8
  %121 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.tb_ring*, %struct.tb_ring** %119, i64 %123
  %125 = load %struct.tb_ring*, %struct.tb_ring** %124, align 8
  %126 = icmp ne %struct.tb_ring* %125, null
  br i1 %126, label %127, label %138

127:                                              ; preds = %116
  %128 = load %struct.tb_nhi*, %struct.tb_nhi** %3, align 8
  %129 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %128, i32 0, i32 4
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load %struct.tb_ring*, %struct.tb_ring** %4, align 8
  %133 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @dev_warn(i32* %131, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* @EBUSY, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %5, align 4
  br label %165

138:                                              ; preds = %116, %111
  br label %139

139:                                              ; preds = %138
  %140 = load %struct.tb_ring*, %struct.tb_ring** %4, align 8
  %141 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %139
  %145 = load %struct.tb_ring*, %struct.tb_ring** %4, align 8
  %146 = load %struct.tb_nhi*, %struct.tb_nhi** %3, align 8
  %147 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %146, i32 0, i32 3
  %148 = load %struct.tb_ring**, %struct.tb_ring*** %147, align 8
  %149 = load %struct.tb_ring*, %struct.tb_ring** %4, align 8
  %150 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.tb_ring*, %struct.tb_ring** %148, i64 %152
  store %struct.tb_ring* %145, %struct.tb_ring** %153, align 8
  br label %164

154:                                              ; preds = %139
  %155 = load %struct.tb_ring*, %struct.tb_ring** %4, align 8
  %156 = load %struct.tb_nhi*, %struct.tb_nhi** %3, align 8
  %157 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %156, i32 0, i32 2
  %158 = load %struct.tb_ring**, %struct.tb_ring*** %157, align 8
  %159 = load %struct.tb_ring*, %struct.tb_ring** %4, align 8
  %160 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds %struct.tb_ring*, %struct.tb_ring** %158, i64 %162
  store %struct.tb_ring* %155, %struct.tb_ring** %163, align 8
  br label %164

164:                                              ; preds = %154, %144
  br label %165

165:                                              ; preds = %164, %127, %100, %73
  %166 = load %struct.tb_nhi*, %struct.tb_nhi** %3, align 8
  %167 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %166, i32 0, i32 1
  %168 = call i32 @spin_unlock_irq(i32* %167)
  %169 = load i32, i32* %5, align 4
  ret i32 %169
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
