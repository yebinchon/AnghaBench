; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtl819x_HTProc.c_HTIOTPeerDetermine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtl819x_HTProc.c_HTIOTPeerDetermine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i32, %struct.rtllib_network, %struct.rt_hi_throughput* }
%struct.rtllib_network = type { i64, i64, i32, i64, i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.rt_hi_throughput = type { i8* }

@HT_IOT_PEER_REALTEK = common dso_local global i8* null, align 8
@RT_HT_CAP_USE_92SE = common dso_local global i32 0, align 4
@HT_IOT_PEER_REALTEK_92SE = common dso_local global i8* null, align 8
@RT_HT_CAP_USE_SOFTAP = common dso_local global i32 0, align 4
@HT_IOT_PEER_92U_SOFTAP = common dso_local global i8* null, align 8
@HT_IOT_PEER_BROADCOM = common dso_local global i8* null, align 8
@UNKNOWN_BORADCOM = common dso_local global i32 0, align 4
@LINKSYSWRT330_LINKSYSWRT300_BROADCOM = common dso_local global i32 0, align 4
@LINKSYSWRT350_LINKSYSWRT150_BROADCOM = common dso_local global i32 0, align 4
@BELKINF5D8233V1_RALINK = common dso_local global i32 0, align 4
@BELKINF5D82334V3_RALINK = common dso_local global i32 0, align 4
@PCI_RALINK = common dso_local global i32 0, align 4
@EDIMAX_RALINK = common dso_local global i32 0, align 4
@AIRLINK_RALINK = common dso_local global i32 0, align 4
@HT_IOT_PEER_RALINK = common dso_local global i8* null, align 8
@DLINK_ATHEROS_1 = common dso_local global i32 0, align 4
@DLINK_ATHEROS_2 = common dso_local global i32 0, align 4
@HT_IOT_PEER_ATHEROS = common dso_local global i8* null, align 8
@CISCO_BROADCOM = common dso_local global i32 0, align 4
@HT_IOT_PEER_CISCO = common dso_local global i8* null, align 8
@LINKSYS_MARVELL_4400N = common dso_local global i32 0, align 4
@HT_IOT_PEER_MARVELL = common dso_local global i8* null, align 8
@HT_IOT_PEER_AIRGO = common dso_local global i8* null, align 8
@HT_IOT_PEER_UNKNOWN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"IOTPEER: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtllib_device*)* @HTIOTPeerDetermine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HTIOTPeerDetermine(%struct.rtllib_device* %0) #0 {
  %2 = alloca %struct.rtllib_device*, align 8
  %3 = alloca %struct.rt_hi_throughput*, align 8
  %4 = alloca %struct.rtllib_network*, align 8
  store %struct.rtllib_device* %0, %struct.rtllib_device** %2, align 8
  %5 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %6 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %5, i32 0, i32 2
  %7 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %6, align 8
  store %struct.rt_hi_throughput* %7, %struct.rt_hi_throughput** %3, align 8
  %8 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %9 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %8, i32 0, i32 1
  store %struct.rtllib_network* %9, %struct.rtllib_network** %4, align 8
  %10 = load %struct.rtllib_network*, %struct.rtllib_network** %4, align 8
  %11 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %43

15:                                               ; preds = %1
  %16 = load i8*, i8** @HT_IOT_PEER_REALTEK, align 8
  %17 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %18 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = load %struct.rtllib_network*, %struct.rtllib_network** %4, align 8
  %20 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %19, i32 0, i32 7
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @RT_HT_CAP_USE_92SE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %15
  %27 = load i8*, i8** @HT_IOT_PEER_REALTEK_92SE, align 8
  %28 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %29 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  br label %30

30:                                               ; preds = %26, %15
  %31 = load %struct.rtllib_network*, %struct.rtllib_network** %4, align 8
  %32 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %31, i32 0, i32 7
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @RT_HT_CAP_USE_SOFTAP, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i8*, i8** @HT_IOT_PEER_92U_SOFTAP, align 8
  %40 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %41 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  br label %42

42:                                               ; preds = %38, %30
  br label %196

43:                                               ; preds = %1
  %44 = load %struct.rtllib_network*, %struct.rtllib_network** %4, align 8
  %45 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %44, i32 0, i32 6
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i8*, i8** @HT_IOT_PEER_BROADCOM, align 8
  %50 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %51 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  br label %195

52:                                               ; preds = %43
  %53 = load %struct.rtllib_network*, %struct.rtllib_network** %4, align 8
  %54 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @UNKNOWN_BORADCOM, align 4
  %57 = call i64 @memcmp(i32 %55, i32 %56, i32 3)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %52
  %60 = load %struct.rtllib_network*, %struct.rtllib_network** %4, align 8
  %61 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @LINKSYSWRT330_LINKSYSWRT300_BROADCOM, align 4
  %64 = call i64 @memcmp(i32 %62, i32 %63, i32 3)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %59
  %67 = load %struct.rtllib_network*, %struct.rtllib_network** %4, align 8
  %68 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @LINKSYSWRT350_LINKSYSWRT150_BROADCOM, align 4
  %71 = call i64 @memcmp(i32 %69, i32 %70, i32 3)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %66, %59, %52
  %74 = load i8*, i8** @HT_IOT_PEER_BROADCOM, align 8
  %75 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %76 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  br label %194

77:                                               ; preds = %66
  %78 = load %struct.rtllib_network*, %struct.rtllib_network** %4, align 8
  %79 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @BELKINF5D8233V1_RALINK, align 4
  %82 = call i64 @memcmp(i32 %80, i32 %81, i32 3)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %117, label %84

84:                                               ; preds = %77
  %85 = load %struct.rtllib_network*, %struct.rtllib_network** %4, align 8
  %86 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @BELKINF5D82334V3_RALINK, align 4
  %89 = call i64 @memcmp(i32 %87, i32 %88, i32 3)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %117, label %91

91:                                               ; preds = %84
  %92 = load %struct.rtllib_network*, %struct.rtllib_network** %4, align 8
  %93 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @PCI_RALINK, align 4
  %96 = call i64 @memcmp(i32 %94, i32 %95, i32 3)
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %117, label %98

98:                                               ; preds = %91
  %99 = load %struct.rtllib_network*, %struct.rtllib_network** %4, align 8
  %100 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @EDIMAX_RALINK, align 4
  %103 = call i64 @memcmp(i32 %101, i32 %102, i32 3)
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %117, label %105

105:                                              ; preds = %98
  %106 = load %struct.rtllib_network*, %struct.rtllib_network** %4, align 8
  %107 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @AIRLINK_RALINK, align 4
  %110 = call i64 @memcmp(i32 %108, i32 %109, i32 3)
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %105
  %113 = load %struct.rtllib_network*, %struct.rtllib_network** %4, align 8
  %114 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %113, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %112, %105, %98, %91, %84, %77
  %118 = load i8*, i8** @HT_IOT_PEER_RALINK, align 8
  %119 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %120 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %119, i32 0, i32 0
  store i8* %118, i8** %120, align 8
  br label %193

121:                                              ; preds = %112
  %122 = load %struct.rtllib_network*, %struct.rtllib_network** %4, align 8
  %123 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %140, label %126

126:                                              ; preds = %121
  %127 = load %struct.rtllib_network*, %struct.rtllib_network** %4, align 8
  %128 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @DLINK_ATHEROS_1, align 4
  %131 = call i64 @memcmp(i32 %129, i32 %130, i32 3)
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %140, label %133

133:                                              ; preds = %126
  %134 = load %struct.rtllib_network*, %struct.rtllib_network** %4, align 8
  %135 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @DLINK_ATHEROS_2, align 4
  %138 = call i64 @memcmp(i32 %136, i32 %137, i32 3)
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %133, %126, %121
  %141 = load i8*, i8** @HT_IOT_PEER_ATHEROS, align 8
  %142 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %143 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %142, i32 0, i32 0
  store i8* %141, i8** %143, align 8
  br label %192

144:                                              ; preds = %133
  %145 = load %struct.rtllib_network*, %struct.rtllib_network** %4, align 8
  %146 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @CISCO_BROADCOM, align 4
  %149 = call i64 @memcmp(i32 %147, i32 %148, i32 3)
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %144
  %152 = load %struct.rtllib_network*, %struct.rtllib_network** %4, align 8
  %153 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %151, %144
  %157 = load i8*, i8** @HT_IOT_PEER_CISCO, align 8
  %158 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %159 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %158, i32 0, i32 0
  store i8* %157, i8** %159, align 8
  br label %191

160:                                              ; preds = %151
  %161 = load %struct.rtllib_network*, %struct.rtllib_network** %4, align 8
  %162 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @LINKSYS_MARVELL_4400N, align 4
  %165 = call i64 @memcmp(i32 %163, i32 %164, i32 3)
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %172, label %167

167:                                              ; preds = %160
  %168 = load %struct.rtllib_network*, %struct.rtllib_network** %4, align 8
  %169 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %167, %160
  %173 = load i8*, i8** @HT_IOT_PEER_MARVELL, align 8
  %174 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %175 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %174, i32 0, i32 0
  store i8* %173, i8** %175, align 8
  br label %190

176:                                              ; preds = %167
  %177 = load %struct.rtllib_network*, %struct.rtllib_network** %4, align 8
  %178 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %176
  %182 = load i8*, i8** @HT_IOT_PEER_AIRGO, align 8
  %183 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %184 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %183, i32 0, i32 0
  store i8* %182, i8** %184, align 8
  br label %189

185:                                              ; preds = %176
  %186 = load i8*, i8** @HT_IOT_PEER_UNKNOWN, align 8
  %187 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %188 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %187, i32 0, i32 0
  store i8* %186, i8** %188, align 8
  br label %189

189:                                              ; preds = %185, %181
  br label %190

190:                                              ; preds = %189, %172
  br label %191

191:                                              ; preds = %190, %156
  br label %192

192:                                              ; preds = %191, %140
  br label %193

193:                                              ; preds = %192, %117
  br label %194

194:                                              ; preds = %193, %73
  br label %195

195:                                              ; preds = %194, %48
  br label %196

196:                                              ; preds = %195, %42
  %197 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %198 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %3, align 8
  %201 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %200, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  %203 = call i32 @netdev_dbg(i32 %199, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %202)
  ret void
}

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
