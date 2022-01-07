; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio.c_rio_clr_err_stopped.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio.c_rio_clr_err_stopped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rio_dev** }

@RIO_PORT_N_ERR_STS_OUT_ES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"RIO_EM: servicing Output Error-Stopped state\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"RIO_EM: Input-status response timeout\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"RIO_EM: SP%d Input-status response=0x%08x\0A\00", align 1
@RIO_PORT_N_MNT_RSP_ASTAT = common dso_local global i64 0, align 8
@RIO_PORT_N_MNT_RSP_LSTAT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"RIO_EM: SP%d_ACK_STS_CSR=0x%08x\0A\00", align 1
@RIO_PORT_N_ACK_INBOUND = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [69 x i8] c"RIO_EM: SP%d far_ackID=0x%02x far_linkstat=0x%02x near_ackID=0x%02x\0A\00", align 1
@RIO_PORT_N_ACK_OUTSTAND = common dso_local global i64 0, align 8
@RIO_PORT_N_ACK_OUTBOUND = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [33 x i8] c"RIO_EM: nextdev pointer == NULL\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"RIO_EM: SP%d_ERR_STS_CSR=0x%08x\0A\00", align 1
@RIO_PORT_N_ERR_STS_INP_ES = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [45 x i8] c"RIO_EM: servicing Input Error-Stopped state\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_dev*, i64, i64)* @rio_clr_err_stopped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rio_clr_err_stopped(%struct.rio_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.rio_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rio_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.rio_dev* %0, %struct.rio_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.rio_dev*, %struct.rio_dev** %4, align 8
  %13 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.rio_dev**, %struct.rio_dev*** %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds %struct.rio_dev*, %struct.rio_dev** %16, i64 %17
  %19 = load %struct.rio_dev*, %struct.rio_dev** %18, align 8
  store %struct.rio_dev* %19, %struct.rio_dev** %7, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load %struct.rio_dev*, %struct.rio_dev** %4, align 8
  %24 = load %struct.rio_dev*, %struct.rio_dev** %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @RIO_DEV_PORT_N_ERR_STS_CSR(%struct.rio_dev* %24, i64 %25)
  %27 = call i32 @rio_read_config_32(%struct.rio_dev* %23, i32 %26, i64* %6)
  br label %28

28:                                               ; preds = %22, %3
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @RIO_PORT_N_ERR_STS_OUT_ES, align 8
  %31 = and i64 %29, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %126

33:                                               ; preds = %28
  %34 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.rio_dev*, %struct.rio_dev** %4, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i64 @rio_get_input_status(%struct.rio_dev* %35, i64 %36, i64* %8)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %117

41:                                               ; preds = %33
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %42, i64 %43)
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* @RIO_PORT_N_MNT_RSP_ASTAT, align 8
  %47 = and i64 %45, %46
  %48 = lshr i64 %47, 5
  store i64 %48, i64* %9, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* @RIO_PORT_N_MNT_RSP_LSTAT, align 8
  %51 = and i64 %49, %50
  store i64 %51, i64* %10, align 8
  %52 = load %struct.rio_dev*, %struct.rio_dev** %4, align 8
  %53 = load %struct.rio_dev*, %struct.rio_dev** %4, align 8
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @RIO_DEV_PORT_N_ACK_STS_CSR(%struct.rio_dev* %53, i64 %54)
  %56 = call i32 @rio_read_config_32(%struct.rio_dev* %52, i32 %55, i64* %8)
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* %8, align 8
  %59 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %57, i64 %58)
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* @RIO_PORT_N_ACK_INBOUND, align 8
  %62 = and i64 %60, %61
  %63 = lshr i64 %62, 24
  store i64 %63, i64* %11, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* %11, align 8
  %68 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0), i64 %64, i64 %65, i64 %66, i64 %67)
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* @RIO_PORT_N_ACK_OUTSTAND, align 8
  %72 = and i64 %70, %71
  %73 = lshr i64 %72, 8
  %74 = icmp ne i64 %69, %73
  br i1 %74, label %81, label %75

75:                                               ; preds = %41
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* @RIO_PORT_N_ACK_OUTBOUND, align 8
  %79 = and i64 %77, %78
  %80 = icmp ne i64 %76, %79
  br i1 %80, label %81, label %116

81:                                               ; preds = %75, %41
  %82 = load %struct.rio_dev*, %struct.rio_dev** %4, align 8
  %83 = load %struct.rio_dev*, %struct.rio_dev** %4, align 8
  %84 = load i64, i64* %5, align 8
  %85 = call i32 @RIO_DEV_PORT_N_ACK_STS_CSR(%struct.rio_dev* %83, i64 %84)
  %86 = load i64, i64* %11, align 8
  %87 = shl i64 %86, 24
  %88 = load i64, i64* %9, align 8
  %89 = shl i64 %88, 8
  %90 = or i64 %87, %89
  %91 = load i64, i64* %9, align 8
  %92 = or i64 %90, %91
  %93 = call i32 @rio_write_config_32(%struct.rio_dev* %82, i32 %85, i64 %92)
  %94 = load i64, i64* %9, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %9, align 8
  %96 = load %struct.rio_dev*, %struct.rio_dev** %7, align 8
  %97 = icmp ne %struct.rio_dev* %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %81
  %99 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %117

100:                                              ; preds = %81
  %101 = load %struct.rio_dev*, %struct.rio_dev** %7, align 8
  %102 = load %struct.rio_dev*, %struct.rio_dev** %7, align 8
  %103 = load %struct.rio_dev*, %struct.rio_dev** %7, align 8
  %104 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @RIO_GET_PORT_NUM(i32 %105)
  %107 = call i32 @RIO_DEV_PORT_N_ACK_STS_CSR(%struct.rio_dev* %102, i64 %106)
  %108 = load i64, i64* %9, align 8
  %109 = shl i64 %108, 24
  %110 = load i64, i64* %11, align 8
  %111 = shl i64 %110, 8
  %112 = or i64 %109, %111
  %113 = load i64, i64* %11, align 8
  %114 = or i64 %112, %113
  %115 = call i32 @rio_write_config_32(%struct.rio_dev* %101, i32 %107, i64 %114)
  br label %116

116:                                              ; preds = %100, %75
  br label %117

117:                                              ; preds = %116, %98, %39
  %118 = load %struct.rio_dev*, %struct.rio_dev** %4, align 8
  %119 = load %struct.rio_dev*, %struct.rio_dev** %4, align 8
  %120 = load i64, i64* %5, align 8
  %121 = call i32 @RIO_DEV_PORT_N_ERR_STS_CSR(%struct.rio_dev* %119, i64 %120)
  %122 = call i32 @rio_read_config_32(%struct.rio_dev* %118, i32 %121, i64* %6)
  %123 = load i64, i64* %5, align 8
  %124 = load i64, i64* %6, align 8
  %125 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i64 %123, i64 %124)
  br label %126

126:                                              ; preds = %117, %28
  %127 = load i64, i64* %6, align 8
  %128 = load i64, i64* @RIO_PORT_N_ERR_STS_INP_ES, align 8
  %129 = and i64 %127, %128
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %151

131:                                              ; preds = %126
  %132 = load %struct.rio_dev*, %struct.rio_dev** %7, align 8
  %133 = icmp ne %struct.rio_dev* %132, null
  br i1 %133, label %134, label %151

134:                                              ; preds = %131
  %135 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0))
  %136 = load %struct.rio_dev*, %struct.rio_dev** %7, align 8
  %137 = load %struct.rio_dev*, %struct.rio_dev** %7, align 8
  %138 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i64 @RIO_GET_PORT_NUM(i32 %139)
  %141 = call i64 @rio_get_input_status(%struct.rio_dev* %136, i64 %140, i64* null)
  %142 = call i32 @udelay(i32 50)
  %143 = load %struct.rio_dev*, %struct.rio_dev** %4, align 8
  %144 = load %struct.rio_dev*, %struct.rio_dev** %4, align 8
  %145 = load i64, i64* %5, align 8
  %146 = call i32 @RIO_DEV_PORT_N_ERR_STS_CSR(%struct.rio_dev* %144, i64 %145)
  %147 = call i32 @rio_read_config_32(%struct.rio_dev* %143, i32 %146, i64* %6)
  %148 = load i64, i64* %5, align 8
  %149 = load i64, i64* %6, align 8
  %150 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i64 %148, i64 %149)
  br label %151

151:                                              ; preds = %134, %131, %126
  %152 = load i64, i64* %6, align 8
  %153 = load i64, i64* @RIO_PORT_N_ERR_STS_OUT_ES, align 8
  %154 = load i64, i64* @RIO_PORT_N_ERR_STS_INP_ES, align 8
  %155 = or i64 %153, %154
  %156 = and i64 %152, %155
  %157 = icmp ne i64 %156, 0
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i32 1, i32 0
  ret i32 %159
}

declare dso_local i32 @rio_read_config_32(%struct.rio_dev*, i32, i64*) #1

declare dso_local i32 @RIO_DEV_PORT_N_ERR_STS_CSR(%struct.rio_dev*, i64) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i64 @rio_get_input_status(%struct.rio_dev*, i64, i64*) #1

declare dso_local i32 @RIO_DEV_PORT_N_ACK_STS_CSR(%struct.rio_dev*, i64) #1

declare dso_local i32 @rio_write_config_32(%struct.rio_dev*, i32, i64) #1

declare dso_local i64 @RIO_GET_PORT_NUM(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
