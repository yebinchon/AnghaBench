; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_validate_template_chksum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_validate_template_chksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla82xx_validate_template_chksum(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.qla_hw_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  store %struct.qla_hw_data* %9, %struct.qla_hw_data** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %11 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %5, align 8
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %15 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = udiv i64 %17, 4
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %24, %1
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %6, align 4
  %23 = icmp sgt i32 %21, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %5, align 8
  %27 = load i32, i32* %25, align 4
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %4, align 4
  br label %20

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %35, %30
  %32 = load i32, i32* %4, align 4
  %33 = ashr i32 %32, 32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = ashr i32 %37, 32
  %39 = add i32 %36, %38
  store i32 %39, i32* %4, align 4
  br label %31

40:                                               ; preds = %31
  %41 = load i32, i32* %4, align 4
  %42 = xor i32 %41, -1
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
