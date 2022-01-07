; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_ioim_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_ioim_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioim_s = type { i64, i32, i32, i32, i32, i32, %struct.bfa_fcpim_s* }
%struct.bfa_fcpim_s = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.bfa_iotag_s = type { i32 }

@io_comps = common dso_local global i32 0, align 4
@BFA_IOIM_IOTAG_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_ioim_free(%struct.bfa_ioim_s* %0) #0 {
  %2 = alloca %struct.bfa_ioim_s*, align 8
  %3 = alloca %struct.bfa_fcpim_s*, align 8
  %4 = alloca %struct.bfa_iotag_s*, align 8
  store %struct.bfa_ioim_s* %0, %struct.bfa_ioim_s** %2, align 8
  %5 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %2, align 8
  %6 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %5, i32 0, i32 6
  %7 = load %struct.bfa_fcpim_s*, %struct.bfa_fcpim_s** %6, align 8
  store %struct.bfa_fcpim_s* %7, %struct.bfa_fcpim_s** %3, align 8
  %8 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %2, align 8
  %9 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %2, align 8
  %14 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %2, align 8
  %17 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %16, i32 0, i32 4
  %18 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %2, align 8
  %19 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @bfa_sgpg_mfree(i32 %15, i32* %17, i64 %20)
  br label %22

22:                                               ; preds = %12, %1
  %23 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %2, align 8
  %24 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @io_comps, align 4
  %27 = call i32 @bfa_stats(i32 %25, i32 %26)
  %28 = load %struct.bfa_fcpim_s*, %struct.bfa_fcpim_s** %3, align 8
  %29 = getelementptr inbounds %struct.bfa_fcpim_s, %struct.bfa_fcpim_s* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 8
  %32 = load i32, i32* @BFA_IOIM_IOTAG_MASK, align 4
  %33 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %2, align 8
  %34 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %2, align 8
  %38 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.bfa_fcpim_s*, %struct.bfa_fcpim_s** %3, align 8
  %41 = getelementptr inbounds %struct.bfa_fcpim_s, %struct.bfa_fcpim_s* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.bfa_fcpim_s*, %struct.bfa_fcpim_s** %3, align 8
  %46 = getelementptr inbounds %struct.bfa_fcpim_s, %struct.bfa_fcpim_s* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %44, %49
  %51 = icmp slt i32 %39, %50
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @WARN_ON(i32 %53)
  %55 = load %struct.bfa_fcpim_s*, %struct.bfa_fcpim_s** %3, align 8
  %56 = getelementptr inbounds %struct.bfa_fcpim_s, %struct.bfa_fcpim_s* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %2, align 8
  %59 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.bfa_iotag_s* @BFA_IOTAG_FROM_TAG(%struct.TYPE_2__* %57, i32 %60)
  store %struct.bfa_iotag_s* %61, %struct.bfa_iotag_s** %4, align 8
  %62 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %2, align 8
  %63 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.bfa_fcpim_s*, %struct.bfa_fcpim_s** %3, align 8
  %66 = getelementptr inbounds %struct.bfa_fcpim_s, %struct.bfa_fcpim_s* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %64, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %22
  %72 = load %struct.bfa_iotag_s*, %struct.bfa_iotag_s** %4, align 8
  %73 = getelementptr inbounds %struct.bfa_iotag_s, %struct.bfa_iotag_s* %72, i32 0, i32 0
  %74 = load %struct.bfa_fcpim_s*, %struct.bfa_fcpim_s** %3, align 8
  %75 = getelementptr inbounds %struct.bfa_fcpim_s, %struct.bfa_fcpim_s* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = call i32 @list_add_tail(i32* %73, i32* %77)
  br label %87

79:                                               ; preds = %22
  %80 = load %struct.bfa_iotag_s*, %struct.bfa_iotag_s** %4, align 8
  %81 = getelementptr inbounds %struct.bfa_iotag_s, %struct.bfa_iotag_s* %80, i32 0, i32 0
  %82 = load %struct.bfa_fcpim_s*, %struct.bfa_fcpim_s** %3, align 8
  %83 = getelementptr inbounds %struct.bfa_fcpim_s, %struct.bfa_fcpim_s* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = call i32 @list_add_tail(i32* %81, i32* %85)
  br label %87

87:                                               ; preds = %79, %71
  %88 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %2, align 8
  %89 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %88, i32 0, i32 1
  %90 = call i32 @list_del(i32* %89)
  ret void
}

declare dso_local i32 @bfa_sgpg_mfree(i32, i32*, i64) #1

declare dso_local i32 @bfa_stats(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.bfa_iotag_s* @BFA_IOTAG_FROM_TAG(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
