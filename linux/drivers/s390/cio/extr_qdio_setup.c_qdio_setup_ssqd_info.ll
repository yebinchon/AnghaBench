; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_setup.c_qdio_setup_ssqd_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_setup.c_qdio_setup_ssqd_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_irq = type { %struct.TYPE_4__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i8, i8, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"%4x ssqd ERR\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"rc:%x\00", align 1
@AC1_SIGA_INPUT_NEEDED = common dso_local global i8 0, align 1
@AC1_SIGA_OUTPUT_NEEDED = common dso_local global i8 0, align 1
@AC1_SIGA_SYNC_NEEDED = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"ac 1:%2x 2:%4x\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"3:%4x qib:%4x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qdio_setup_ssqd_info(%struct.qdio_irq* %0) #0 {
  %2 = alloca %struct.qdio_irq*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store %struct.qdio_irq* %0, %struct.qdio_irq** %2, align 8
  %5 = load %struct.qdio_irq*, %struct.qdio_irq** %2, align 8
  %6 = load %struct.qdio_irq*, %struct.qdio_irq** %2, align 8
  %7 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %6, i32 0, i32 2
  %8 = load %struct.qdio_irq*, %struct.qdio_irq** %2, align 8
  %9 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %8, i32 0, i32 1
  %10 = call i32 @qdio_setup_get_ssqd(%struct.qdio_irq* %5, %struct.TYPE_5__* %7, %struct.TYPE_6__* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %1
  %14 = load %struct.qdio_irq*, %struct.qdio_irq** %2, align 8
  %15 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @DBF_ERROR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @DBF_ERROR(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load i8, i8* @AC1_SIGA_INPUT_NEEDED, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* @AC1_SIGA_OUTPUT_NEEDED, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %22, %24
  %26 = load i8, i8* @AC1_SIGA_SYNC_NEEDED, align 1
  %27 = zext i8 %26 to i32
  %28 = or i32 %25, %27
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %3, align 1
  br label %35

30:                                               ; preds = %1
  %31 = load %struct.qdio_irq*, %struct.qdio_irq** %2, align 8
  %32 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i8, i8* %33, align 4
  store i8 %34, i8* %3, align 1
  br label %35

35:                                               ; preds = %30, %13
  %36 = load %struct.qdio_irq*, %struct.qdio_irq** %2, align 8
  %37 = load i8, i8* %3, align 1
  %38 = load %struct.qdio_irq*, %struct.qdio_irq** %2, align 8
  %39 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @check_and_setup_qebsm(%struct.qdio_irq* %36, i8 zeroext %37, i32 %41)
  %43 = load %struct.qdio_irq*, %struct.qdio_irq** %2, align 8
  %44 = load i8, i8* %3, align 1
  %45 = call i32 @process_ac_flags(%struct.qdio_irq* %43, i8 zeroext %44)
  %46 = load i8, i8* %3, align 1
  %47 = load %struct.qdio_irq*, %struct.qdio_irq** %2, align 8
  %48 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @DBF_EVENT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %46, i32 %50)
  %52 = load %struct.qdio_irq*, %struct.qdio_irq** %2, align 8
  %53 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i8, i8* %54, align 1
  %56 = load %struct.qdio_irq*, %struct.qdio_irq** %2, align 8
  %57 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @DBF_EVENT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8 zeroext %55, i32 %59)
  ret void
}

declare dso_local i32 @qdio_setup_get_ssqd(%struct.qdio_irq*, %struct.TYPE_5__*, %struct.TYPE_6__*) #1

declare dso_local i32 @DBF_ERROR(i8*, i32) #1

declare dso_local i32 @check_and_setup_qebsm(%struct.qdio_irq*, i8 zeroext, i32) #1

declare dso_local i32 @process_ac_flags(%struct.qdio_irq*, i8 zeroext) #1

declare dso_local i32 @DBF_EVENT(i8*, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
