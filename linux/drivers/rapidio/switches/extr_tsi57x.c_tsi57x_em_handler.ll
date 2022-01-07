; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/switches/extr_tsi57x.c_tsi57x_em_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/switches/extr_tsi57x.c_tsi57x_em_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_dev = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { %struct.rio_mport* }
%struct.rio_mport = type { i64 }

@RIO_PORT_N_ERR_STS_PORT_OK = common dso_local global i32 0, align 4
@RIO_PORT_N_ERR_STS_OUT_ES = common dso_local global i32 0, align 4
@RIO_PORT_N_ERR_STS_INP_ES = common dso_local global i32 0, align 4
@RIO_PORT_N_CTL_LOCKOUT = common dso_local global i32 0, align 4
@RIO_PORT_N_MNT_RSP_RVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"TSI578[%x:%x] SP%d_INT_STATUS=0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"RIO: TSI578[%s] P%d LUT Parity Error (destID=%d)\0A\00", align 1
@RIO_GLOBAL_TABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_dev*, i32)* @tsi57x_em_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi57x_em_handler(%struct.rio_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rio_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rio_mport*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rio_dev* %0, %struct.rio_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %13 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %12, i32 0, i32 3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.rio_mport*, %struct.rio_mport** %15, align 8
  store %struct.rio_mport* %16, %struct.rio_mport** %5, align 8
  %17 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %18 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @RIO_DEV_PORT_N_ERR_STS_CSR(%struct.rio_dev* %18, i32 %19)
  %21 = call i32 @rio_read_config_32(%struct.rio_dev* %17, i32 %20, i32* %7)
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @RIO_PORT_N_ERR_STS_PORT_OK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %94

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @RIO_PORT_N_ERR_STS_OUT_ES, align 4
  %29 = load i32, i32* @RIO_PORT_N_ERR_STS_INP_ES, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %94

33:                                               ; preds = %26
  %34 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %35 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @RIO_DEV_PORT_N_CTL_CSR(%struct.rio_dev* %35, i32 %36)
  %38 = call i32 @rio_read_config_32(%struct.rio_dev* %34, i32 %37, i32* %11)
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @RIO_PORT_N_CTL_LOCKOUT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %59, label %43

43:                                               ; preds = %33
  %44 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %45 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @RIO_DEV_PORT_N_CTL_CSR(%struct.rio_dev* %45, i32 %46)
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @RIO_PORT_N_CTL_LOCKOUT, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @rio_write_config_32(%struct.rio_dev* %44, i32 %47, i32 %50)
  %52 = call i32 @udelay(i32 50)
  %53 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %54 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @RIO_DEV_PORT_N_CTL_CSR(%struct.rio_dev* %54, i32 %55)
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @rio_write_config_32(%struct.rio_dev* %53, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %43, %33
  %60 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %61 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @RIO_DEV_PORT_N_MNT_RSP_CSR(%struct.rio_dev* %61, i32 %62)
  %64 = call i32 @rio_read_config_32(%struct.rio_dev* %60, i32 %63, i32* %11)
  store i32 3, i32* %8, align 4
  br label %65

65:                                               ; preds = %90, %59
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %93

68:                                               ; preds = %65
  %69 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @TSI578_SP_CS_TX(i32 %70)
  %72 = call i32 @rio_write_config_32(%struct.rio_dev* %69, i32 %71, i32 1090289664)
  store i32 3, i32* %9, align 4
  br label %73

73:                                               ; preds = %89, %68
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %9, align 4
  %76 = icmp ne i32 %74, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %73
  %78 = call i32 @udelay(i32 50)
  %79 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %80 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @RIO_DEV_PORT_N_MNT_RSP_CSR(%struct.rio_dev* %80, i32 %81)
  %83 = call i32 @rio_read_config_32(%struct.rio_dev* %79, i32 %82, i32* %11)
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @RIO_PORT_N_MNT_RSP_RVAL, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %77
  br label %95

89:                                               ; preds = %77
  br label %73

90:                                               ; preds = %73
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %8, align 4
  br label %65

93:                                               ; preds = %65
  br label %94

94:                                               ; preds = %93, %26, %2
  br label %95

95:                                               ; preds = %94, %88
  %96 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @TSI578_SP_INT_STATUS(i32 %97)
  %99 = call i32 @rio_read_config_32(%struct.rio_dev* %96, i32 %98, i32* %6)
  %100 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %101 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %104 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* %6, align 4
  %108 = call i32 (i8*, i32, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %102, i32 %105, i32 %106, i32 %107)
  %109 = load i32, i32* %6, align 4
  %110 = and i32 %109, 65536
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %154

112:                                              ; preds = %95
  %113 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @TSI578_SP_LUT_PEINF(i32 %114)
  %116 = call i32 @rio_read_config_32(%struct.rio_dev* %113, i32 %115, i32* %11)
  %117 = load %struct.rio_mport*, %struct.rio_mport** %5, align 8
  %118 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %112
  %122 = load i32, i32* %11, align 4
  %123 = ashr i32 %122, 16
  br label %127

124:                                              ; preds = %112
  %125 = load i32, i32* %11, align 4
  %126 = ashr i32 %125, 24
  br label %127

127:                                              ; preds = %124, %121
  %128 = phi i32 [ %123, %121 ], [ %126, %124 ]
  store i32 %128, i32* %11, align 4
  %129 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %130 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %129, i32 0, i32 2
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %10, align 4
  %138 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %139 = call i32 @rio_name(%struct.rio_dev* %138)
  %140 = load i32, i32* %4, align 4
  %141 = load i32, i32* %11, align 4
  %142 = call i32 (i8*, i32, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %139, i32 %140, i32 %141)
  %143 = load %struct.rio_mport*, %struct.rio_mport** %5, align 8
  %144 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %145 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %148 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @RIO_GLOBAL_TABLE, align 4
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* %10, align 4
  %153 = call i32 @tsi57x_route_add_entry(%struct.rio_mport* %143, i32 %146, i32 %149, i32 %150, i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %127, %95
  %155 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %156 = load i32, i32* %4, align 4
  %157 = call i32 @TSI578_SP_INT_STATUS(i32 %156)
  %158 = load i32, i32* %6, align 4
  %159 = and i32 %158, 458941
  %160 = call i32 @rio_write_config_32(%struct.rio_dev* %155, i32 %157, i32 %159)
  ret i32 0
}

declare dso_local i32 @rio_read_config_32(%struct.rio_dev*, i32, i32*) #1

declare dso_local i32 @RIO_DEV_PORT_N_ERR_STS_CSR(%struct.rio_dev*, i32) #1

declare dso_local i32 @RIO_DEV_PORT_N_CTL_CSR(%struct.rio_dev*, i32) #1

declare dso_local i32 @rio_write_config_32(%struct.rio_dev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @RIO_DEV_PORT_N_MNT_RSP_CSR(%struct.rio_dev*, i32) #1

declare dso_local i32 @TSI578_SP_CS_TX(i32) #1

declare dso_local i32 @TSI578_SP_INT_STATUS(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, ...) #1

declare dso_local i32 @TSI578_SP_LUT_PEINF(i32) #1

declare dso_local i32 @rio_name(%struct.rio_dev*) #1

declare dso_local i32 @tsi57x_route_add_entry(%struct.rio_mport*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
