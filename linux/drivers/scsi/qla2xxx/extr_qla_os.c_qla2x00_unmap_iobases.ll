; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_unmap_iobases.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_unmap_iobases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i32*, i32*, i32*, i32*, i64, i64 }

@ql2xdbwr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qla_hw_data*)* @qla2x00_unmap_iobases to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2x00_unmap_iobases(%struct.qla_hw_data* %0) #0 {
  %2 = alloca %struct.qla_hw_data*, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %2, align 8
  %3 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %4 = call i64 @IS_QLA82XX(%struct.qla_hw_data* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %1
  %7 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %8 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i32*
  %11 = call i32 @iounmap(i32* %10)
  %12 = load i32, i32* @ql2xdbwr, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %6
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %16 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i32*
  %19 = call i32 @iounmap(i32* %18)
  br label %20

20:                                               ; preds = %14, %6
  br label %74

21:                                               ; preds = %1
  %22 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %23 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %28 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @iounmap(i32* %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %33 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %38 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @iounmap(i32* %39)
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %43 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %48 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @iounmap(i32* %49)
  br label %51

51:                                               ; preds = %46, %41
  %52 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %53 = call i64 @IS_QLA83XX(%struct.qla_hw_data* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %51
  %56 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %57 = call i64 @IS_QLA27XX(%struct.qla_hw_data* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %61 = call i64 @IS_QLA28XX(%struct.qla_hw_data* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %59, %55, %51
  %64 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %65 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %70 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @iounmap(i32* %71)
  br label %73

73:                                               ; preds = %68, %63, %59
  br label %74

74:                                               ; preds = %73, %20
  ret void
}

declare dso_local i64 @IS_QLA82XX(%struct.qla_hw_data*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i64 @IS_QLA83XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA27XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA28XX(%struct.qla_hw_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
