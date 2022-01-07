; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/i810/extr_i810_main.c_i810_alloc_agp_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/i810/extr_i810_main.c_i810_alloc_agp_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.i810fb_par* }
%struct.i810fb_par = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, i32, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.agp_bridge_data = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"i810fb_alloc_fbmem: cannot acquire agpgart\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@AGP_NORMAL_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"i810fb_alloc_fbmem: can't allocate framebuffer memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"i810fb_alloc_fbmem: can't bind framebuffer memory\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@AGP_PHYSICAL_MEMORY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"i810fb_alloc_cursormem:  can't allocate cursor memory\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"i810fb_alloc_cursormem: cannot bind cursor memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @i810_alloc_agp_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i810_alloc_agp_mem(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.i810fb_par*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.agp_bridge_data*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 0
  %9 = load %struct.i810fb_par*, %struct.i810fb_par** %8, align 8
  store %struct.i810fb_par* %9, %struct.i810fb_par** %4, align 8
  %10 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %11 = call i32 @i810_fix_offsets(%struct.i810fb_par* %10)
  %12 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %13 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %17 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %15, %19
  store i32 %20, i32* %5, align 4
  %21 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %22 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.agp_bridge_data* @agp_backend_acquire(i32 %23)
  store %struct.agp_bridge_data* %24, %struct.agp_bridge_data** %6, align 8
  %25 = icmp ne %struct.agp_bridge_data* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %1
  %27 = call i32 @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %115

30:                                               ; preds = %1
  %31 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %32 = load i32, i32* %5, align 4
  %33 = ashr i32 %32, 12
  %34 = load i32, i32* @AGP_NORMAL_MEMORY, align 4
  %35 = call i8* @agp_allocate_memory(%struct.agp_bridge_data* %31, i32 %33, i32 %34)
  %36 = bitcast i8* %35 to %struct.TYPE_10__*
  %37 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %38 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** %39, align 8
  %40 = icmp ne %struct.TYPE_10__* %36, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %30
  %42 = call i32 @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %44 = call i32 @agp_backend_release(%struct.agp_bridge_data* %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %115

47:                                               ; preds = %30
  %48 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %49 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %53 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @agp_bind_memory(%struct.TYPE_10__* %51, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %47
  %59 = call i32 @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %60 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %61 = call i32 @agp_backend_release(%struct.agp_bridge_data* %60)
  %62 = load i32, i32* @EBUSY, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %115

64:                                               ; preds = %47
  %65 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %66 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %67 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = ashr i32 %69, 12
  %71 = load i32, i32* @AGP_PHYSICAL_MEMORY, align 4
  %72 = call i8* @agp_allocate_memory(%struct.agp_bridge_data* %65, i32 %70, i32 %71)
  %73 = bitcast i8* %72 to %struct.TYPE_10__*
  %74 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %75 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  store %struct.TYPE_10__* %73, %struct.TYPE_10__** %76, align 8
  %77 = icmp ne %struct.TYPE_10__* %73, null
  br i1 %77, label %84, label %78

78:                                               ; preds = %64
  %79 = call i32 @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %80 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %81 = call i32 @agp_backend_release(%struct.agp_bridge_data* %80)
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %115

84:                                               ; preds = %64
  %85 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %86 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %90 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @agp_bind_memory(%struct.TYPE_10__* %88, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %84
  %96 = call i32 @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  %97 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %98 = call i32 @agp_backend_release(%struct.agp_bridge_data* %97)
  %99 = load i32, i32* @EBUSY, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  br label %115

101:                                              ; preds = %84
  %102 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %103 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %109 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  store i32 %107, i32* %110, align 4
  %111 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %112 = call i32 @i810_fix_pointers(%struct.i810fb_par* %111)
  %113 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %6, align 8
  %114 = call i32 @agp_backend_release(%struct.agp_bridge_data* %113)
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %101, %95, %78, %58, %41, %26
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @i810_fix_offsets(%struct.i810fb_par*) #1

declare dso_local %struct.agp_bridge_data* @agp_backend_acquire(i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i8* @agp_allocate_memory(%struct.agp_bridge_data*, i32, i32) #1

declare dso_local i32 @agp_backend_release(%struct.agp_bridge_data*) #1

declare dso_local i64 @agp_bind_memory(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @i810_fix_pointers(%struct.i810fb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
