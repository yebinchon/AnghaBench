; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/tcm_fc/extr_tfc_sess.c_ft_prli_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/tcm_fc/extr_tfc_sess.c_ft_prli_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rport_priv = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.fc_els_spp = type { i32, i8* }
%struct.ft_tport = type { i32 }
%struct.ft_sess = type { i32, i32, i32 }

@FC_SPP_OPA_VAL = common dso_local global i32 0, align 4
@FC_SPP_RPA_VAL = common dso_local global i32 0, align 4
@FC_SPP_RESP_NO_PA = common dso_local global i32 0, align 4
@FCP_SPPF_INIT_FCN = common dso_local global i32 0, align 4
@FCP_SPPF_TARG_FCN = common dso_local global i32 0, align 4
@FC_SPP_RESP_INVL = common dso_local global i32 0, align 4
@FC_SPP_EST_IMG_PAIR = common dso_local global i32 0, align 4
@FC_SPP_RESP_CONF = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@FC_SPP_RESP_RES = common dso_local global i32 0, align 4
@FCP_SPPF_RETRY = common dso_local global i32 0, align 4
@FC_SPP_RESP_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_rport_priv*, i32, %struct.fc_els_spp*, %struct.fc_els_spp*)* @ft_prli_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ft_prli_locked(%struct.fc_rport_priv* %0, i32 %1, %struct.fc_els_spp* %2, %struct.fc_els_spp* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fc_rport_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fc_els_spp*, align 8
  %9 = alloca %struct.fc_els_spp*, align 8
  %10 = alloca %struct.ft_tport*, align 8
  %11 = alloca %struct.ft_sess*, align 8
  %12 = alloca i32, align 4
  store %struct.fc_rport_priv* %0, %struct.fc_rport_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.fc_els_spp* %2, %struct.fc_els_spp** %8, align 8
  store %struct.fc_els_spp* %3, %struct.fc_els_spp** %9, align 8
  %13 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %14 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.ft_tport* @ft_tport_get(i32 %15)
  store %struct.ft_tport* %16, %struct.ft_tport** %10, align 8
  %17 = load %struct.ft_tport*, %struct.ft_tport** %10, align 8
  %18 = icmp ne %struct.ft_tport* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  br label %136

20:                                               ; preds = %4
  %21 = load %struct.fc_els_spp*, %struct.fc_els_spp** %8, align 8
  %22 = icmp ne %struct.fc_els_spp* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  br label %120

24:                                               ; preds = %20
  %25 = load %struct.fc_els_spp*, %struct.fc_els_spp** %8, align 8
  %26 = getelementptr inbounds %struct.fc_els_spp, %struct.fc_els_spp* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @FC_SPP_OPA_VAL, align 4
  %29 = load i32, i32* @FC_SPP_RPA_VAL, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* @FC_SPP_RESP_NO_PA, align 4
  store i32 %34, i32* %5, align 4
  br label %149

35:                                               ; preds = %24
  %36 = load %struct.fc_els_spp*, %struct.fc_els_spp** %8, align 8
  %37 = getelementptr inbounds %struct.fc_els_spp, %struct.fc_els_spp* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @ntohl(i8* %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @FCP_SPPF_INIT_FCN, align 4
  %42 = load i32, i32* @FCP_SPPF_TARG_FCN, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %35
  %47 = load i32, i32* @FC_SPP_RESP_INVL, align 4
  store i32 %47, i32* %5, align 4
  br label %149

48:                                               ; preds = %35
  %49 = load %struct.fc_els_spp*, %struct.fc_els_spp** %8, align 8
  %50 = getelementptr inbounds %struct.fc_els_spp, %struct.fc_els_spp* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @FC_SPP_EST_IMG_PAIR, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %119

55:                                               ; preds = %48
  %56 = load i32, i32* @FC_SPP_EST_IMG_PAIR, align 4
  %57 = load %struct.fc_els_spp*, %struct.fc_els_spp** %9, align 8
  %58 = getelementptr inbounds %struct.fc_els_spp, %struct.fc_els_spp* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @FCP_SPPF_INIT_FCN, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %55
  %66 = load i32, i32* @FC_SPP_RESP_CONF, align 4
  store i32 %66, i32* %5, align 4
  br label %149

67:                                               ; preds = %55
  %68 = load %struct.ft_tport*, %struct.ft_tport** %10, align 8
  %69 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %70 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %74 = call %struct.ft_sess* @ft_sess_create(%struct.ft_tport* %68, i32 %72, %struct.fc_rport_priv* %73)
  store %struct.ft_sess* %74, %struct.ft_sess** %11, align 8
  %75 = load %struct.ft_sess*, %struct.ft_sess** %11, align 8
  %76 = call i64 @IS_ERR(%struct.ft_sess* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %67
  %79 = load %struct.ft_sess*, %struct.ft_sess** %11, align 8
  %80 = call i32 @PTR_ERR(%struct.ft_sess* %79)
  %81 = load i32, i32* @EACCES, align 4
  %82 = sub nsw i32 0, %81
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %78
  %85 = load i32, i32* @FC_SPP_EST_IMG_PAIR, align 4
  %86 = xor i32 %85, -1
  %87 = load %struct.fc_els_spp*, %struct.fc_els_spp** %9, align 8
  %88 = getelementptr inbounds %struct.fc_els_spp, %struct.fc_els_spp* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load i32, i32* @FC_SPP_RESP_CONF, align 4
  store i32 %91, i32* %5, align 4
  br label %149

92:                                               ; preds = %78
  %93 = load i32, i32* @FC_SPP_RESP_RES, align 4
  store i32 %93, i32* %5, align 4
  br label %149

94:                                               ; preds = %67
  %95 = load %struct.ft_sess*, %struct.ft_sess** %11, align 8
  %96 = getelementptr inbounds %struct.ft_sess, %struct.ft_sess* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %94
  %100 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %101 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %99, %94
  %105 = load i32, i32* %12, align 4
  %106 = load %struct.ft_sess*, %struct.ft_sess** %11, align 8
  %107 = getelementptr inbounds %struct.ft_sess, %struct.ft_sess* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %109 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ft_sess*, %struct.ft_sess** %11, align 8
  %113 = getelementptr inbounds %struct.ft_sess, %struct.ft_sess* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 4
  %114 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %115 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ft_sess*, %struct.ft_sess** %11, align 8
  %118 = getelementptr inbounds %struct.ft_sess, %struct.ft_sess* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  br label %119

119:                                              ; preds = %104, %48
  br label %120

120:                                              ; preds = %119, %23
  %121 = load %struct.fc_els_spp*, %struct.fc_els_spp** %9, align 8
  %122 = getelementptr inbounds %struct.fc_els_spp, %struct.fc_els_spp* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @ntohl(i8* %123)
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* @FCP_SPPF_RETRY, align 4
  %126 = xor i32 %125, -1
  %127 = load i32, i32* %12, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* @FCP_SPPF_TARG_FCN, align 4
  %131 = or i32 %129, %130
  %132 = call i8* @htonl(i32 %131)
  %133 = load %struct.fc_els_spp*, %struct.fc_els_spp** %9, align 8
  %134 = getelementptr inbounds %struct.fc_els_spp, %struct.fc_els_spp* %133, i32 0, i32 1
  store i8* %132, i8** %134, align 8
  %135 = load i32, i32* @FC_SPP_RESP_ACK, align 4
  store i32 %135, i32* %5, align 4
  br label %149

136:                                              ; preds = %19
  %137 = load %struct.fc_els_spp*, %struct.fc_els_spp** %9, align 8
  %138 = getelementptr inbounds %struct.fc_els_spp, %struct.fc_els_spp* %137, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @ntohl(i8* %139)
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* @FCP_SPPF_TARG_FCN, align 4
  %142 = xor i32 %141, -1
  %143 = load i32, i32* %12, align 4
  %144 = and i32 %143, %142
  store i32 %144, i32* %12, align 4
  %145 = load i32, i32* %12, align 4
  %146 = call i8* @htonl(i32 %145)
  %147 = load %struct.fc_els_spp*, %struct.fc_els_spp** %9, align 8
  %148 = getelementptr inbounds %struct.fc_els_spp, %struct.fc_els_spp* %147, i32 0, i32 1
  store i8* %146, i8** %148, align 8
  store i32 0, i32* %5, align 4
  br label %149

149:                                              ; preds = %136, %120, %92, %84, %65, %46, %33
  %150 = load i32, i32* %5, align 4
  ret i32 %150
}

declare dso_local %struct.ft_tport* @ft_tport_get(i32) #1

declare dso_local i32 @ntohl(i8*) #1

declare dso_local %struct.ft_sess* @ft_sess_create(%struct.ft_tport*, i32, %struct.fc_rport_priv*) #1

declare dso_local i64 @IS_ERR(%struct.ft_sess*) #1

declare dso_local i32 @PTR_ERR(%struct.ft_sess*) #1

declare dso_local i8* @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
