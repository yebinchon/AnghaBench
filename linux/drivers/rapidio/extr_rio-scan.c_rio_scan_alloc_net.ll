; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio-scan.c_rio_scan_alloc_net.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio-scan.c_rio_scan_alloc_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_net = type { %struct.TYPE_2__, i32, %struct.rio_mport*, i32, %struct.rio_id_table* }
%struct.TYPE_2__ = type { i32, i32* }
%struct.rio_id_table = type { i32, i32, i32 }
%struct.rio_mport = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"RIO: failed to allocate destID table\0A\00", align 1
@rio_scan_release_net = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"rnet_%d\00", align 1
@rio_scan_release_dev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rio_net* (%struct.rio_mport*, i32, i32)* @rio_scan_alloc_net to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rio_net* @rio_scan_alloc_net(%struct.rio_mport* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rio_mport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rio_net*, align 8
  %8 = alloca %struct.rio_id_table*, align 8
  %9 = alloca i64, align 8
  store %struct.rio_mport* %0, %struct.rio_mport** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.rio_mport*, %struct.rio_mport** %4, align 8
  %11 = call %struct.rio_net* @rio_alloc_net(%struct.rio_mport* %10)
  store %struct.rio_net* %11, %struct.rio_net** %7, align 8
  %12 = load %struct.rio_net*, %struct.rio_net** %7, align 8
  %13 = icmp ne %struct.rio_net* %12, null
  br i1 %13, label %14, label %55

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %55

17:                                               ; preds = %14
  %18 = load %struct.rio_mport*, %struct.rio_mport** %4, align 8
  %19 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @RIO_MAX_ROUTE_ENTRIES(i32 %20)
  %22 = call i32 @BITS_TO_LONGS(i32 %21)
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 8
  %25 = add i64 12, %24
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.rio_id_table* @kzalloc(i64 %26, i32 %27)
  store %struct.rio_id_table* %28, %struct.rio_id_table** %8, align 8
  %29 = load %struct.rio_id_table*, %struct.rio_id_table** %8, align 8
  %30 = icmp eq %struct.rio_id_table* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %17
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.rio_net*, %struct.rio_net** %7, align 8
  %34 = call i32 @rio_free_net(%struct.rio_net* %33)
  store %struct.rio_net* null, %struct.rio_net** %7, align 8
  br label %54

35:                                               ; preds = %17
  %36 = load %struct.rio_id_table*, %struct.rio_id_table** %8, align 8
  %37 = load %struct.rio_net*, %struct.rio_net** %7, align 8
  %38 = getelementptr inbounds %struct.rio_net, %struct.rio_net* %37, i32 0, i32 4
  store %struct.rio_id_table* %36, %struct.rio_id_table** %38, align 8
  %39 = load i32, i32* @rio_scan_release_net, align 4
  %40 = load %struct.rio_net*, %struct.rio_net** %7, align 8
  %41 = getelementptr inbounds %struct.rio_net, %struct.rio_net* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.rio_id_table*, %struct.rio_id_table** %8, align 8
  %44 = getelementptr inbounds %struct.rio_id_table, %struct.rio_id_table* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.rio_mport*, %struct.rio_mport** %4, align 8
  %46 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @RIO_MAX_ROUTE_ENTRIES(i32 %47)
  %49 = load %struct.rio_id_table*, %struct.rio_id_table** %8, align 8
  %50 = getelementptr inbounds %struct.rio_id_table, %struct.rio_id_table* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.rio_id_table*, %struct.rio_id_table** %8, align 8
  %52 = getelementptr inbounds %struct.rio_id_table, %struct.rio_id_table* %51, i32 0, i32 0
  %53 = call i32 @spin_lock_init(i32* %52)
  br label %54

54:                                               ; preds = %35, %31
  br label %55

55:                                               ; preds = %54, %14, %3
  %56 = load %struct.rio_net*, %struct.rio_net** %7, align 8
  %57 = icmp ne %struct.rio_net* %56, null
  br i1 %57, label %58, label %84

58:                                               ; preds = %55
  %59 = load %struct.rio_mport*, %struct.rio_mport** %4, align 8
  %60 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.rio_net*, %struct.rio_net** %7, align 8
  %63 = getelementptr inbounds %struct.rio_net, %struct.rio_net* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load %struct.rio_mport*, %struct.rio_mport** %4, align 8
  %65 = load %struct.rio_net*, %struct.rio_net** %7, align 8
  %66 = getelementptr inbounds %struct.rio_net, %struct.rio_net* %65, i32 0, i32 2
  store %struct.rio_mport* %64, %struct.rio_mport** %66, align 8
  %67 = load %struct.rio_net*, %struct.rio_net** %7, align 8
  %68 = getelementptr inbounds %struct.rio_net, %struct.rio_net* %67, i32 0, i32 0
  %69 = load %struct.rio_net*, %struct.rio_net** %7, align 8
  %70 = getelementptr inbounds %struct.rio_net, %struct.rio_net* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dev_set_name(%struct.TYPE_2__* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load %struct.rio_mport*, %struct.rio_mport** %4, align 8
  %74 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %73, i32 0, i32 0
  %75 = load %struct.rio_net*, %struct.rio_net** %7, align 8
  %76 = getelementptr inbounds %struct.rio_net, %struct.rio_net* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  store i32* %74, i32** %77, align 8
  %78 = load i32, i32* @rio_scan_release_dev, align 4
  %79 = load %struct.rio_net*, %struct.rio_net** %7, align 8
  %80 = getelementptr inbounds %struct.rio_net, %struct.rio_net* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  %82 = load %struct.rio_net*, %struct.rio_net** %7, align 8
  %83 = call i32 @rio_add_net(%struct.rio_net* %82)
  br label %84

84:                                               ; preds = %58, %55
  %85 = load %struct.rio_net*, %struct.rio_net** %7, align 8
  ret %struct.rio_net* %85
}

declare dso_local %struct.rio_net* @rio_alloc_net(%struct.rio_mport*) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @RIO_MAX_ROUTE_ENTRIES(i32) #1

declare dso_local %struct.rio_id_table* @kzalloc(i64, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @rio_free_net(%struct.rio_net*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @rio_add_net(%struct.rio_net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
