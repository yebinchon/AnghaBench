; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_rsrc_nonstatic.c_store_mem_db.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_rsrc_nonstatic.c_store_mem_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.pcmcia_socket = type { i32 }

@ADD_MANAGED_RESOURCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"+ 0x%lx - 0x%lx\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"- 0x%lx - 0x%lx\00", align 1
@REMOVE_MANAGED_RESOURCE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"0x%lx - 0x%lx\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_mem_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_mem_db(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pcmcia_socket*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.pcmcia_socket* @dev_get_drvdata(%struct.device* %15)
  store %struct.pcmcia_socket* %16, %struct.pcmcia_socket** %10, align 8
  %17 = load i32, i32* @ADD_MANAGED_RESOURCE, align 4
  store i32 %17, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @sscanf(i8* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64* %11, i64* %12)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp ne i32 %20, 2
  br i1 %21, label %22, label %39

22:                                               ; preds = %4
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @sscanf(i8* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64* %11, i64* %12)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* @REMOVE_MANAGED_RESOURCE, align 4
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 2
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @sscanf(i8* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i64* %11, i64* %12)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* @ADD_MANAGED_RESOURCE, align 4
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 2
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %68

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %22
  br label %39

39:                                               ; preds = %38, %4
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* %11, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %68

46:                                               ; preds = %39
  %47 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %10, align 8
  %48 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %47, i32 0, i32 0
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %10, align 8
  %51 = load i32, i32* %13, align 4
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %12, align 8
  %54 = call i32 @adjust_memory(%struct.pcmcia_socket* %50, i32 %51, i64 %52, i64 %53)
  store i32 %54, i32* %14, align 4
  %55 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %10, align 8
  %56 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %46
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  br label %65

63:                                               ; preds = %46
  %64 = load i64, i64* %9, align 8
  br label %65

65:                                               ; preds = %63, %60
  %66 = phi i64 [ %62, %60 ], [ %64, %63 ]
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %65, %43, %34
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local %struct.pcmcia_socket* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adjust_memory(%struct.pcmcia_socket*, i32, i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
