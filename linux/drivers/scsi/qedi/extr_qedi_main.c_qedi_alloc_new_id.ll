; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_alloc_new_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_alloc_new_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_portid_tbl = type { i32, i32, i32, i64, i32 }

@QEDI_LOCAL_PORT_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qedi_alloc_new_id(%struct.qedi_portid_tbl* %0) #0 {
  %2 = alloca %struct.qedi_portid_tbl*, align 8
  %3 = alloca i32, align 4
  store %struct.qedi_portid_tbl* %0, %struct.qedi_portid_tbl** %2, align 8
  %4 = load %struct.qedi_portid_tbl*, %struct.qedi_portid_tbl** %2, align 8
  %5 = getelementptr inbounds %struct.qedi_portid_tbl, %struct.qedi_portid_tbl* %4, i32 0, i32 2
  %6 = call i32 @spin_lock(i32* %5)
  %7 = load %struct.qedi_portid_tbl*, %struct.qedi_portid_tbl** %2, align 8
  %8 = getelementptr inbounds %struct.qedi_portid_tbl, %struct.qedi_portid_tbl* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.qedi_portid_tbl*, %struct.qedi_portid_tbl** %2, align 8
  %11 = getelementptr inbounds %struct.qedi_portid_tbl, %struct.qedi_portid_tbl* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.qedi_portid_tbl*, %struct.qedi_portid_tbl** %2, align 8
  %14 = getelementptr inbounds %struct.qedi_portid_tbl, %struct.qedi_portid_tbl* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @find_next_zero_bit(i32 %9, i32 %12, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.qedi_portid_tbl*, %struct.qedi_portid_tbl** %2, align 8
  %19 = getelementptr inbounds %struct.qedi_portid_tbl, %struct.qedi_portid_tbl* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sge i32 %17, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %1
  %23 = load i32, i32* @QEDI_LOCAL_PORT_INVALID, align 4
  store i32 %23, i32* %3, align 4
  %24 = load %struct.qedi_portid_tbl*, %struct.qedi_portid_tbl** %2, align 8
  %25 = getelementptr inbounds %struct.qedi_portid_tbl, %struct.qedi_portid_tbl* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %22
  %29 = load %struct.qedi_portid_tbl*, %struct.qedi_portid_tbl** %2, align 8
  %30 = getelementptr inbounds %struct.qedi_portid_tbl, %struct.qedi_portid_tbl* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.qedi_portid_tbl*, %struct.qedi_portid_tbl** %2, align 8
  %33 = getelementptr inbounds %struct.qedi_portid_tbl, %struct.qedi_portid_tbl* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @find_first_zero_bit(i32 %31, i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.qedi_portid_tbl*, %struct.qedi_portid_tbl** %2, align 8
  %38 = getelementptr inbounds %struct.qedi_portid_tbl, %struct.qedi_portid_tbl* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sge i32 %36, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %28
  %42 = load i32, i32* @QEDI_LOCAL_PORT_INVALID, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %28
  br label %44

44:                                               ; preds = %43, %22
  br label %45

45:                                               ; preds = %44, %1
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.qedi_portid_tbl*, %struct.qedi_portid_tbl** %2, align 8
  %48 = getelementptr inbounds %struct.qedi_portid_tbl, %struct.qedi_portid_tbl* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %45
  %52 = load i32, i32* %3, align 4
  %53 = load %struct.qedi_portid_tbl*, %struct.qedi_portid_tbl** %2, align 8
  %54 = getelementptr inbounds %struct.qedi_portid_tbl, %struct.qedi_portid_tbl* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @set_bit(i32 %52, i32 %55)
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  %59 = load %struct.qedi_portid_tbl*, %struct.qedi_portid_tbl** %2, align 8
  %60 = getelementptr inbounds %struct.qedi_portid_tbl, %struct.qedi_portid_tbl* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %61, 1
  %63 = and i32 %58, %62
  %64 = load %struct.qedi_portid_tbl*, %struct.qedi_portid_tbl** %2, align 8
  %65 = getelementptr inbounds %struct.qedi_portid_tbl, %struct.qedi_portid_tbl* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.qedi_portid_tbl*, %struct.qedi_portid_tbl** %2, align 8
  %67 = getelementptr inbounds %struct.qedi_portid_tbl, %struct.qedi_portid_tbl* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %51, %45
  %74 = load %struct.qedi_portid_tbl*, %struct.qedi_portid_tbl** %2, align 8
  %75 = getelementptr inbounds %struct.qedi_portid_tbl, %struct.qedi_portid_tbl* %74, i32 0, i32 2
  %76 = call i32 @spin_unlock(i32* %75)
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @find_next_zero_bit(i32, i32, i32) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
