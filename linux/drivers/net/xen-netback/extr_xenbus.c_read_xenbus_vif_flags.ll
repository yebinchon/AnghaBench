; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_xenbus.c_read_xenbus_vif_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_xenbus.c_read_xenbus_vif_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backend_info = type { %struct.xenvif*, %struct.xenbus_device* }
%struct.xenvif = type { i32, i32, i32, i32, i64, i32 }
%struct.xenbus_device = type { i32 }

@XBT_NIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"request-rx-copy\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"reading %s/request-rx-copy\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"feature-rx-notify\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"feature-sg\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"feature-gso-tcpv4\00", align 1
@TCPV4 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"feature-gso-tcpv6\00", align 1
@TCPV6 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"feature-no-csum-offload\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"feature-ipv6-csum-offload\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backend_info*)* @read_xenbus_vif_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_xenbus_vif_flags(%struct.backend_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.backend_info*, align 8
  %4 = alloca %struct.xenvif*, align 8
  %5 = alloca %struct.xenbus_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.backend_info* %0, %struct.backend_info** %3, align 8
  %8 = load %struct.backend_info*, %struct.backend_info** %3, align 8
  %9 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %8, i32 0, i32 0
  %10 = load %struct.xenvif*, %struct.xenvif** %9, align 8
  store %struct.xenvif* %10, %struct.xenvif** %4, align 8
  %11 = load %struct.backend_info*, %struct.backend_info** %3, align 8
  %12 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %11, i32 0, i32 1
  %13 = load %struct.xenbus_device*, %struct.xenbus_device** %12, align 8
  store %struct.xenbus_device* %13, %struct.xenbus_device** %5, align 8
  %14 = load i32, i32* @XBT_NIL, align 4
  %15 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %16 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @xenbus_scanf(i32 %14, i32 %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %23, %1
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %31 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %28, i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %2, align 4
  br label %115

35:                                               ; preds = %24
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %115

41:                                               ; preds = %35
  %42 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %43 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @xenbus_read_unsigned(i32 %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %41
  %48 = call i32 @msecs_to_jiffies(i32 30)
  %49 = load %struct.backend_info*, %struct.backend_info** %3, align 8
  %50 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %49, i32 0, i32 0
  %51 = load %struct.xenvif*, %struct.xenvif** %50, align 8
  %52 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %51, i32 0, i32 5
  store i32 %48, i32* %52, align 8
  %53 = load %struct.backend_info*, %struct.backend_info** %3, align 8
  %54 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %53, i32 0, i32 0
  %55 = load %struct.xenvif*, %struct.xenvif** %54, align 8
  %56 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %55, i32 0, i32 4
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %47, %41
  %58 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %59 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @xenbus_read_unsigned(i32 %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %62 = icmp ne i64 %61, 0
  %63 = xor i1 %62, true
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = load %struct.xenvif*, %struct.xenvif** %4, align 8
  %67 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.xenvif*, %struct.xenvif** %4, align 8
  %69 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %68, i32 0, i32 3
  store i32 0, i32* %69, align 4
  %70 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %71 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @xenbus_read_unsigned(i32 %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %57
  %76 = load i32, i32* @TCPV4, align 4
  %77 = call i32 @GSO_BIT(i32 %76)
  %78 = load %struct.xenvif*, %struct.xenvif** %4, align 8
  %79 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %75, %57
  %83 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %84 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @xenbus_read_unsigned(i32 %85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 0)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load i32, i32* @TCPV6, align 4
  %90 = call i32 @GSO_BIT(i32 %89)
  %91 = load %struct.xenvif*, %struct.xenvif** %4, align 8
  %92 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %88, %82
  %96 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %97 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @xenbus_read_unsigned(i32 %98, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 0)
  %100 = icmp ne i64 %99, 0
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = load %struct.xenvif*, %struct.xenvif** %4, align 8
  %104 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %106 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @xenbus_read_unsigned(i32 %107, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 0)
  %109 = icmp ne i64 %108, 0
  %110 = xor i1 %109, true
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  %113 = load %struct.xenvif*, %struct.xenvif** %4, align 8
  %114 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %95, %38, %27
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @xenbus_scanf(i32, i32, i8*, i8*, i32*) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.xenbus_device*, i32, i8*, i32) #1

declare dso_local i64 @xenbus_read_unsigned(i32, i8*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @GSO_BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
