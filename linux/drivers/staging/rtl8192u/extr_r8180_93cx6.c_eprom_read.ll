; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8180_93cx6.c_eprom_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8180_93cx6.c_eprom_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64 }

@__const.eprom_read.read_cmd = private unnamed_addr constant [3 x i16] [i16 1, i16 1, i16 0], align 2
@EPROM_CMD = common dso_local global i32 0, align 4
@EPROM_CMD_PROGRAM = common dso_local global i32 0, align 4
@EPROM_CMD_OPERATING_MODE_SHIFT = common dso_local global i32 0, align 4
@EPROM_DELAY = common dso_local global i32 0, align 4
@EPROM_93c56 = common dso_local global i64 0, align 8
@EPROM_CMD_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eprom_read(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.r8192_priv*, align 8
  %7 = alloca [3 x i16], align 2
  %8 = alloca [8 x i16], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %13)
  store %struct.r8192_priv* %14, %struct.r8192_priv** %6, align 8
  %15 = bitcast [3 x i16]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %15, i8* align 2 bitcast ([3 x i16]* @__const.eprom_read.read_cmd to i8*), i64 6, i1 false)
  store i32 0, i32* %11, align 4
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = load i32, i32* @EPROM_CMD, align 4
  %18 = load i32, i32* @EPROM_CMD_PROGRAM, align 4
  %19 = load i32, i32* @EPROM_CMD_OPERATING_MODE_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = call i32 @write_nic_byte_E(%struct.net_device* %16, i32 %17, i32 %20)
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = call i32 @force_pci_posting(%struct.net_device* %22)
  %24 = load i32, i32* @EPROM_DELAY, align 4
  %25 = call i32 @udelay(i32 %24)
  %26 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %27 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @EPROM_93c56, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %71

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, 1
  %34 = trunc i32 %33 to i16
  %35 = getelementptr inbounds [8 x i16], [8 x i16]* %8, i64 0, i64 7
  store i16 %34, i16* %35, align 2
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @BIT(i32 1)
  %38 = and i32 %36, %37
  %39 = trunc i32 %38 to i16
  %40 = getelementptr inbounds [8 x i16], [8 x i16]* %8, i64 0, i64 6
  store i16 %39, i16* %40, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @BIT(i32 2)
  %43 = and i32 %41, %42
  %44 = trunc i32 %43 to i16
  %45 = getelementptr inbounds [8 x i16], [8 x i16]* %8, i64 0, i64 5
  store i16 %44, i16* %45, align 2
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @BIT(i32 3)
  %48 = and i32 %46, %47
  %49 = trunc i32 %48 to i16
  %50 = getelementptr inbounds [8 x i16], [8 x i16]* %8, i64 0, i64 4
  store i16 %49, i16* %50, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @BIT(i32 4)
  %53 = and i32 %51, %52
  %54 = trunc i32 %53 to i16
  %55 = getelementptr inbounds [8 x i16], [8 x i16]* %8, i64 0, i64 3
  store i16 %54, i16* %55, align 2
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @BIT(i32 5)
  %58 = and i32 %56, %57
  %59 = trunc i32 %58 to i16
  %60 = getelementptr inbounds [8 x i16], [8 x i16]* %8, i64 0, i64 2
  store i16 %59, i16* %60, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @BIT(i32 6)
  %63 = and i32 %61, %62
  %64 = trunc i32 %63 to i16
  %65 = getelementptr inbounds [8 x i16], [8 x i16]* %8, i64 0, i64 1
  store i16 %64, i16* %65, align 2
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @BIT(i32 7)
  %68 = and i32 %66, %67
  %69 = trunc i32 %68 to i16
  %70 = getelementptr inbounds [8 x i16], [8 x i16]* %8, i64 0, i64 0
  store i16 %69, i16* %70, align 16
  store i32 8, i32* %10, align 4
  br label %101

71:                                               ; preds = %2
  %72 = load i32, i32* %5, align 4
  %73 = and i32 %72, 1
  %74 = trunc i32 %73 to i16
  %75 = getelementptr inbounds [8 x i16], [8 x i16]* %8, i64 0, i64 5
  store i16 %74, i16* %75, align 2
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @BIT(i32 1)
  %78 = and i32 %76, %77
  %79 = trunc i32 %78 to i16
  %80 = getelementptr inbounds [8 x i16], [8 x i16]* %8, i64 0, i64 4
  store i16 %79, i16* %80, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @BIT(i32 2)
  %83 = and i32 %81, %82
  %84 = trunc i32 %83 to i16
  %85 = getelementptr inbounds [8 x i16], [8 x i16]* %8, i64 0, i64 3
  store i16 %84, i16* %85, align 2
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @BIT(i32 3)
  %88 = and i32 %86, %87
  %89 = trunc i32 %88 to i16
  %90 = getelementptr inbounds [8 x i16], [8 x i16]* %8, i64 0, i64 2
  store i16 %89, i16* %90, align 4
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @BIT(i32 4)
  %93 = and i32 %91, %92
  %94 = trunc i32 %93 to i16
  %95 = getelementptr inbounds [8 x i16], [8 x i16]* %8, i64 0, i64 1
  store i16 %94, i16* %95, align 2
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @BIT(i32 5)
  %98 = and i32 %96, %97
  %99 = trunc i32 %98 to i16
  %100 = getelementptr inbounds [8 x i16], [8 x i16]* %8, i64 0, i64 0
  store i16 %99, i16* %100, align 16
  store i32 6, i32* %10, align 4
  br label %101

101:                                              ; preds = %71, %31
  %102 = load %struct.net_device*, %struct.net_device** %4, align 8
  %103 = call i32 @eprom_cs(%struct.net_device* %102, i32 1)
  %104 = load %struct.net_device*, %struct.net_device** %4, align 8
  %105 = call i32 @eprom_ck_cycle(%struct.net_device* %104)
  %106 = load %struct.net_device*, %struct.net_device** %4, align 8
  %107 = getelementptr inbounds [3 x i16], [3 x i16]* %7, i64 0, i64 0
  %108 = call i32 @eprom_send_bits_string(%struct.net_device* %106, i16* %107, i32 3)
  %109 = load %struct.net_device*, %struct.net_device** %4, align 8
  %110 = getelementptr inbounds [8 x i16], [8 x i16]* %8, i64 0, i64 0
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @eprom_send_bits_string(%struct.net_device* %109, i16* %110, i32 %111)
  %113 = load %struct.net_device*, %struct.net_device** %4, align 8
  %114 = call i32 @eprom_w(%struct.net_device* %113, i32 0)
  store i32 0, i32* %9, align 4
  br label %115

115:                                              ; preds = %134, %101
  %116 = load i32, i32* %9, align 4
  %117 = icmp slt i32 %116, 16
  br i1 %117, label %118, label %137

118:                                              ; preds = %115
  %119 = load %struct.net_device*, %struct.net_device** %4, align 8
  %120 = call i32 @eprom_ck_cycle(%struct.net_device* %119)
  %121 = load %struct.net_device*, %struct.net_device** %4, align 8
  %122 = call i32 @eprom_r(%struct.net_device* %121)
  store i32 %122, i32* %12, align 4
  %123 = load i32, i32* %12, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %118
  %126 = load i32, i32* %12, align 4
  store i32 %126, i32* %3, align 4
  br label %149

127:                                              ; preds = %118
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %9, align 4
  %130 = sub nsw i32 15, %129
  %131 = shl i32 %128, %130
  %132 = load i32, i32* %11, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %11, align 4
  br label %134

134:                                              ; preds = %127
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %9, align 4
  br label %115

137:                                              ; preds = %115
  %138 = load %struct.net_device*, %struct.net_device** %4, align 8
  %139 = call i32 @eprom_cs(%struct.net_device* %138, i32 0)
  %140 = load %struct.net_device*, %struct.net_device** %4, align 8
  %141 = call i32 @eprom_ck_cycle(%struct.net_device* %140)
  %142 = load %struct.net_device*, %struct.net_device** %4, align 8
  %143 = load i32, i32* @EPROM_CMD, align 4
  %144 = load i32, i32* @EPROM_CMD_NORMAL, align 4
  %145 = load i32, i32* @EPROM_CMD_OPERATING_MODE_SHIFT, align 4
  %146 = shl i32 %144, %145
  %147 = call i32 @write_nic_byte_E(%struct.net_device* %142, i32 %143, i32 %146)
  %148 = load i32, i32* %11, align 4
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %137, %125
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @write_nic_byte_E(%struct.net_device*, i32, i32) #1

declare dso_local i32 @force_pci_posting(%struct.net_device*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @eprom_cs(%struct.net_device*, i32) #1

declare dso_local i32 @eprom_ck_cycle(%struct.net_device*) #1

declare dso_local i32 @eprom_send_bits_string(%struct.net_device*, i16*, i32) #1

declare dso_local i32 @eprom_w(%struct.net_device*, i32) #1

declare dso_local i32 @eprom_r(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
