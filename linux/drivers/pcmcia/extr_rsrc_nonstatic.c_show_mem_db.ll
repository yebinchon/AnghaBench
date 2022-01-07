; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_rsrc_nonstatic.c_show_mem_db.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_rsrc_nonstatic.c_show_mem_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.pcmcia_socket = type { i32, %struct.socket_data* }
%struct.socket_data = type { %struct.resource_map, %struct.resource_map }
%struct.resource_map = type { i64, i64, %struct.resource_map* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"0x%08lx - 0x%08lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_mem_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_mem_db(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pcmcia_socket*, align 8
  %8 = alloca %struct.socket_data*, align 8
  %9 = alloca %struct.resource_map*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.pcmcia_socket* @dev_get_drvdata(%struct.device* %11)
  store %struct.pcmcia_socket* %12, %struct.pcmcia_socket** %7, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %7, align 8
  %14 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %7, align 8
  %17 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %16, i32 0, i32 1
  %18 = load %struct.socket_data*, %struct.socket_data** %17, align 8
  store %struct.socket_data* %18, %struct.socket_data** %8, align 8
  %19 = load %struct.socket_data*, %struct.socket_data** %8, align 8
  %20 = getelementptr inbounds %struct.socket_data, %struct.socket_data* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %20, i32 0, i32 2
  %22 = load %struct.resource_map*, %struct.resource_map** %21, align 8
  store %struct.resource_map* %22, %struct.resource_map** %9, align 8
  br label %23

23:                                               ; preds = %59, %3
  %24 = load %struct.resource_map*, %struct.resource_map** %9, align 8
  %25 = load %struct.socket_data*, %struct.socket_data** %8, align 8
  %26 = getelementptr inbounds %struct.socket_data, %struct.socket_data* %25, i32 0, i32 1
  %27 = icmp ne %struct.resource_map* %24, %26
  br i1 %27, label %28, label %63

28:                                               ; preds = %23
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = sub nsw i32 %30, 10
  %32 = icmp sgt i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %59

34:                                               ; preds = %28
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = load i32, i32* %10, align 4
  %41 = sub nsw i32 %39, %40
  %42 = sub nsw i32 %41, 1
  %43 = load %struct.resource_map*, %struct.resource_map** %9, align 8
  %44 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.resource_map*, %struct.resource_map** %9, align 8
  %47 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.resource_map*, %struct.resource_map** %9, align 8
  %50 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %48, %51
  %53 = sub i64 %52, 1
  %54 = call i64 @snprintf(i8* %38, i32 %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %45, i64 %53)
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %34, %33
  %60 = load %struct.resource_map*, %struct.resource_map** %9, align 8
  %61 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %60, i32 0, i32 2
  %62 = load %struct.resource_map*, %struct.resource_map** %61, align 8
  store %struct.resource_map* %62, %struct.resource_map** %9, align 8
  br label %23

63:                                               ; preds = %23
  %64 = load %struct.socket_data*, %struct.socket_data** %8, align 8
  %65 = getelementptr inbounds %struct.socket_data, %struct.socket_data* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %65, i32 0, i32 2
  %67 = load %struct.resource_map*, %struct.resource_map** %66, align 8
  store %struct.resource_map* %67, %struct.resource_map** %9, align 8
  br label %68

68:                                               ; preds = %104, %63
  %69 = load %struct.resource_map*, %struct.resource_map** %9, align 8
  %70 = load %struct.socket_data*, %struct.socket_data** %8, align 8
  %71 = getelementptr inbounds %struct.socket_data, %struct.socket_data* %70, i32 0, i32 0
  %72 = icmp ne %struct.resource_map* %69, %71
  br i1 %72, label %73, label %108

73:                                               ; preds = %68
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @PAGE_SIZE, align 4
  %76 = sub nsw i32 %75, 10
  %77 = icmp sgt i32 %74, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %104

79:                                               ; preds = %73
  %80 = load i8*, i8** %6, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i32, i32* @PAGE_SIZE, align 4
  %85 = load i32, i32* %10, align 4
  %86 = sub nsw i32 %84, %85
  %87 = sub nsw i32 %86, 1
  %88 = load %struct.resource_map*, %struct.resource_map** %9, align 8
  %89 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.resource_map*, %struct.resource_map** %9, align 8
  %92 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.resource_map*, %struct.resource_map** %9, align 8
  %95 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add i64 %93, %96
  %98 = sub i64 %97, 1
  %99 = call i64 @snprintf(i8* %83, i32 %87, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %90, i64 %98)
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %101, %99
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %79, %78
  %105 = load %struct.resource_map*, %struct.resource_map** %9, align 8
  %106 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %105, i32 0, i32 2
  %107 = load %struct.resource_map*, %struct.resource_map** %106, align 8
  store %struct.resource_map* %107, %struct.resource_map** %9, align 8
  br label %68

108:                                              ; preds = %68
  %109 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %7, align 8
  %110 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %109, i32 0, i32 0
  %111 = call i32 @mutex_unlock(i32* %110)
  %112 = load i32, i32* %10, align 4
  ret i32 %112
}

declare dso_local %struct.pcmcia_socket* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
