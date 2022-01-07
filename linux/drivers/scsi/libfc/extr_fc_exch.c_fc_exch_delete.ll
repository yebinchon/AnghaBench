; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_delete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_exch = type { i32, i32, i32, %struct.TYPE_2__*, %struct.fc_exch_pool* }
%struct.TYPE_2__ = type { i32 }
%struct.fc_exch_pool = type { i64, i32, i8*, i8*, i8* }

@fc_cpu_order = common dso_local global i32 0, align 4
@FC_EX_QUARANTINE = common dso_local global i32 0, align 4
@FC_XID_UNKNOWN = common dso_local global i8* null, align 8
@fc_quarantine_exch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_exch*)* @fc_exch_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_exch_delete(%struct.fc_exch* %0) #0 {
  %2 = alloca %struct.fc_exch*, align 8
  %3 = alloca %struct.fc_exch_pool*, align 8
  %4 = alloca i8*, align 8
  store %struct.fc_exch* %0, %struct.fc_exch** %2, align 8
  %5 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %6 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %5, i32 0, i32 4
  %7 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %6, align 8
  store %struct.fc_exch_pool* %7, %struct.fc_exch_pool** %3, align 8
  %8 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %3, align 8
  %9 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %8, i32 0, i32 1
  %10 = call i32 @spin_lock_bh(i32* %9)
  %11 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %3, align 8
  %12 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sle i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %3, align 8
  %18 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, i64* %18, align 8
  %21 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %22 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %25 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %23, %28
  %30 = load i32, i32* @fc_cpu_order, align 4
  %31 = ashr i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %4, align 8
  %34 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %35 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @FC_EX_QUARANTINE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %69, label %40

40:                                               ; preds = %1
  %41 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %3, align 8
  %42 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %41, i32 0, i32 4
  %43 = load i8*, i8** %42, align 8
  %44 = load i8*, i8** @FC_XID_UNKNOWN, align 8
  %45 = icmp eq i8* %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i8*, i8** %4, align 8
  %48 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %3, align 8
  %49 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %48, i32 0, i32 4
  store i8* %47, i8** %49, align 8
  br label %65

50:                                               ; preds = %40
  %51 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %3, align 8
  %52 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %51, i32 0, i32 3
  %53 = load i8*, i8** %52, align 8
  %54 = load i8*, i8** @FC_XID_UNKNOWN, align 8
  %55 = icmp eq i8* %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i8*, i8** %4, align 8
  %58 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %3, align 8
  %59 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  br label %64

60:                                               ; preds = %50
  %61 = load i8*, i8** %4, align 8
  %62 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %3, align 8
  %63 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  br label %64

64:                                               ; preds = %60, %56
  br label %65

65:                                               ; preds = %64, %46
  %66 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %3, align 8
  %67 = load i8*, i8** %4, align 8
  %68 = call i32 @fc_exch_ptr_set(%struct.fc_exch_pool* %66, i8* %67, i32* null)
  br label %73

69:                                               ; preds = %1
  %70 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %3, align 8
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 @fc_exch_ptr_set(%struct.fc_exch_pool* %70, i8* %71, i32* @fc_quarantine_exch)
  br label %73

73:                                               ; preds = %69, %65
  %74 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %75 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %74, i32 0, i32 2
  %76 = call i32 @list_del(i32* %75)
  %77 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %3, align 8
  %78 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %77, i32 0, i32 1
  %79 = call i32 @spin_unlock_bh(i32* %78)
  %80 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %81 = call i32 @fc_exch_release(%struct.fc_exch* %80)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @fc_exch_ptr_set(%struct.fc_exch_pool*, i8*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @fc_exch_release(%struct.fc_exch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
