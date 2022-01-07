; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_port.c_link_peers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_port.c_link_peers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_port = type { i64, i32, %struct.TYPE_4__, %struct.usb_port* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"usb: failed to peer %s and %s by %s (%s:%s) (%s:%s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"peer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_port*, %struct.usb_port*)* @link_peers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_peers(%struct.usb_port* %0, %struct.usb_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_port*, align 8
  %5 = alloca %struct.usb_port*, align 8
  %6 = alloca %struct.usb_port*, align 8
  %7 = alloca %struct.usb_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_port*, align 8
  %10 = alloca %struct.usb_port*, align 8
  %11 = alloca i8*, align 8
  store %struct.usb_port* %0, %struct.usb_port** %4, align 8
  store %struct.usb_port* %1, %struct.usb_port** %5, align 8
  %12 = load %struct.usb_port*, %struct.usb_port** %4, align 8
  %13 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %12, i32 0, i32 3
  %14 = load %struct.usb_port*, %struct.usb_port** %13, align 8
  %15 = load %struct.usb_port*, %struct.usb_port** %5, align 8
  %16 = icmp eq %struct.usb_port* %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.usb_port*, %struct.usb_port** %5, align 8
  %19 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %18, i32 0, i32 3
  %20 = load %struct.usb_port*, %struct.usb_port** %19, align 8
  %21 = load %struct.usb_port*, %struct.usb_port** %4, align 8
  %22 = icmp eq %struct.usb_port* %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %156

24:                                               ; preds = %17, %2
  %25 = load %struct.usb_port*, %struct.usb_port** %4, align 8
  %26 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %25, i32 0, i32 3
  %27 = load %struct.usb_port*, %struct.usb_port** %26, align 8
  %28 = icmp ne %struct.usb_port* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.usb_port*, %struct.usb_port** %5, align 8
  %31 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %30, i32 0, i32 3
  %32 = load %struct.usb_port*, %struct.usb_port** %31, align 8
  %33 = icmp ne %struct.usb_port* %32, null
  br i1 %33, label %34, label %90

34:                                               ; preds = %29, %24
  %35 = load %struct.usb_port*, %struct.usb_port** %4, align 8
  %36 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %35, i32 0, i32 3
  %37 = load %struct.usb_port*, %struct.usb_port** %36, align 8
  store %struct.usb_port* %37, %struct.usb_port** %9, align 8
  %38 = load %struct.usb_port*, %struct.usb_port** %5, align 8
  %39 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %38, i32 0, i32 3
  %40 = load %struct.usb_port*, %struct.usb_port** %39, align 8
  store %struct.usb_port* %40, %struct.usb_port** %10, align 8
  %41 = load %struct.usb_port*, %struct.usb_port** %4, align 8
  %42 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %34
  %46 = load %struct.usb_port*, %struct.usb_port** %4, align 8
  %47 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.usb_port*, %struct.usb_port** %5, align 8
  %50 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %55

54:                                               ; preds = %45, %34
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %55

55:                                               ; preds = %54, %53
  %56 = load %struct.usb_port*, %struct.usb_port** %4, align 8
  %57 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %56, i32 0, i32 2
  %58 = call i8* @dev_name(%struct.TYPE_4__* %57)
  %59 = load %struct.usb_port*, %struct.usb_port** %5, align 8
  %60 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %59, i32 0, i32 2
  %61 = call i8* @dev_name(%struct.TYPE_4__* %60)
  %62 = load i8*, i8** %11, align 8
  %63 = load %struct.usb_port*, %struct.usb_port** %4, align 8
  %64 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %63, i32 0, i32 2
  %65 = call i8* @dev_name(%struct.TYPE_4__* %64)
  %66 = load %struct.usb_port*, %struct.usb_port** %9, align 8
  %67 = icmp ne %struct.usb_port* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %55
  %69 = load %struct.usb_port*, %struct.usb_port** %9, align 8
  %70 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %69, i32 0, i32 2
  %71 = call i8* @dev_name(%struct.TYPE_4__* %70)
  br label %73

72:                                               ; preds = %55
  br label %73

73:                                               ; preds = %72, %68
  %74 = phi i8* [ %71, %68 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %72 ]
  %75 = load %struct.usb_port*, %struct.usb_port** %5, align 8
  %76 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %75, i32 0, i32 2
  %77 = call i8* @dev_name(%struct.TYPE_4__* %76)
  %78 = load %struct.usb_port*, %struct.usb_port** %10, align 8
  %79 = icmp ne %struct.usb_port* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %73
  %81 = load %struct.usb_port*, %struct.usb_port** %10, align 8
  %82 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %81, i32 0, i32 2
  %83 = call i8* @dev_name(%struct.TYPE_4__* %82)
  br label %85

84:                                               ; preds = %73
  br label %85

85:                                               ; preds = %84, %80
  %86 = phi i8* [ %83, %80 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %84 ]
  %87 = call i32 @pr_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i8* %58, i8* %61, i8* %62, i8* %65, i8* %74, i8* %77, i8* %86)
  %88 = load i32, i32* @EBUSY, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %156

90:                                               ; preds = %29
  %91 = load %struct.usb_port*, %struct.usb_port** %4, align 8
  %92 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load %struct.usb_port*, %struct.usb_port** %5, align 8
  %95 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = call i32 @sysfs_create_link(i32* %93, i32* %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %90
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %3, align 4
  br label %156

102:                                              ; preds = %90
  %103 = load %struct.usb_port*, %struct.usb_port** %5, align 8
  %104 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load %struct.usb_port*, %struct.usb_port** %4, align 8
  %107 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = call i32 @sysfs_create_link(i32* %105, i32* %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %102
  %113 = load %struct.usb_port*, %struct.usb_port** %4, align 8
  %114 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = call i32 @sysfs_remove_link(i32* %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %3, align 4
  br label %156

118:                                              ; preds = %102
  %119 = load %struct.usb_port*, %struct.usb_port** %4, align 8
  %120 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %118
  %124 = load %struct.usb_port*, %struct.usb_port** %4, align 8
  store %struct.usb_port* %124, %struct.usb_port** %6, align 8
  %125 = load %struct.usb_port*, %struct.usb_port** %5, align 8
  %126 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @WARN_ON(i32 %127)
  %129 = load %struct.usb_port*, %struct.usb_port** %5, align 8
  store %struct.usb_port* %129, %struct.usb_port** %7, align 8
  br label %140

130:                                              ; preds = %118
  %131 = load %struct.usb_port*, %struct.usb_port** %5, align 8
  store %struct.usb_port* %131, %struct.usb_port** %6, align 8
  %132 = load %struct.usb_port*, %struct.usb_port** %5, align 8
  %133 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  %136 = xor i1 %135, true
  %137 = zext i1 %136 to i32
  %138 = call i32 @WARN_ON(i32 %137)
  %139 = load %struct.usb_port*, %struct.usb_port** %4, align 8
  store %struct.usb_port* %139, %struct.usb_port** %7, align 8
  br label %140

140:                                              ; preds = %130, %123
  %141 = load %struct.usb_port*, %struct.usb_port** %7, align 8
  %142 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %141, i32 0, i32 2
  %143 = call i32 @pm_runtime_get_sync(%struct.TYPE_4__* %142)
  %144 = load %struct.usb_port*, %struct.usb_port** %5, align 8
  %145 = load %struct.usb_port*, %struct.usb_port** %4, align 8
  %146 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %145, i32 0, i32 3
  store %struct.usb_port* %144, %struct.usb_port** %146, align 8
  %147 = load %struct.usb_port*, %struct.usb_port** %4, align 8
  %148 = load %struct.usb_port*, %struct.usb_port** %5, align 8
  %149 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %148, i32 0, i32 3
  store %struct.usb_port* %147, %struct.usb_port** %149, align 8
  %150 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %151 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %150, i32 0, i32 2
  %152 = call i32 @pm_runtime_get_sync(%struct.TYPE_4__* %151)
  %153 = load %struct.usb_port*, %struct.usb_port** %7, align 8
  %154 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %153, i32 0, i32 2
  %155 = call i32 @pm_runtime_put(%struct.TYPE_4__* %154)
  store i32 0, i32* %3, align 4
  br label %156

156:                                              ; preds = %140, %112, %100, %85, %23
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32 @pr_debug(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @dev_name(%struct.TYPE_4__*) #1

declare dso_local i32 @sysfs_create_link(i32*, i32*, i8*) #1

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.TYPE_4__*) #1

declare dso_local i32 @pm_runtime_put(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
