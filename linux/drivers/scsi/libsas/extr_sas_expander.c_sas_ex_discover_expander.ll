; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_sas_ex_discover_expander.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_sas_ex_discover_expander.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i32, %struct.TYPE_4__, i32, %struct.asd_sas_port*, i32, i32, i32, i32, i32, %struct.domain_device*, i32, %struct.sas_rphy* }
%struct.TYPE_4__ = type { i32, %struct.ex_phy* }
%struct.ex_phy = type { i64, i32, i32*, i32, i32, i32, i32 }
%struct.asd_sas_port = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sas_rphy = type { i32 }
%struct.sas_expander_device = type { i64 }

@DIRECT_ROUTING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"ex %016llx:%02d:D <--> ex %016llx:0x%x is not allowed\0A\00", align 1
@SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.domain_device* (%struct.domain_device*, i32)* @sas_ex_discover_expander to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.domain_device* @sas_ex_discover_expander(%struct.domain_device* %0, i32 %1) #0 {
  %3 = alloca %struct.domain_device*, align 8
  %4 = alloca %struct.domain_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sas_expander_device*, align 8
  %7 = alloca %struct.ex_phy*, align 8
  %8 = alloca %struct.domain_device*, align 8
  %9 = alloca %struct.sas_rphy*, align 8
  %10 = alloca %struct.sas_expander_device*, align 8
  %11 = alloca %struct.asd_sas_port*, align 8
  %12 = alloca i32, align 4
  store %struct.domain_device* %0, %struct.domain_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %14 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %13, i32 0, i32 11
  %15 = load %struct.sas_rphy*, %struct.sas_rphy** %14, align 8
  %16 = call %struct.sas_expander_device* @rphy_to_expander_device(%struct.sas_rphy* %15)
  store %struct.sas_expander_device* %16, %struct.sas_expander_device** %6, align 8
  %17 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %18 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.ex_phy*, %struct.ex_phy** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %20, i64 %22
  store %struct.ex_phy* %23, %struct.ex_phy** %7, align 8
  store %struct.domain_device* null, %struct.domain_device** %8, align 8
  %24 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %25 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DIRECT_ROUTING, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %2
  %30 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %31 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @SAS_ADDR(i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %36 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @SAS_ADDR(i32 %37)
  %39 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %40 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pr_warn(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34, i32 %38, i32 %41)
  store %struct.domain_device* null, %struct.domain_device** %3, align 8
  br label %215

43:                                               ; preds = %2
  %44 = call %struct.domain_device* (...) @sas_alloc_device()
  store %struct.domain_device* %44, %struct.domain_device** %8, align 8
  %45 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %46 = icmp ne %struct.domain_device* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  store %struct.domain_device* null, %struct.domain_device** %3, align 8
  br label %215

48:                                               ; preds = %43
  %49 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %50 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %49, i32 0, i32 11
  %51 = load %struct.sas_rphy*, %struct.sas_rphy** %50, align 8
  %52 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %51, i32 0, i32 0
  %53 = load i32, i32* %5, align 4
  %54 = call i32* @sas_port_alloc(i32* %52, i32 %53)
  %55 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %56 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %55, i32 0, i32 2
  store i32* %54, i32** %56, align 8
  %57 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %58 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = call i64 @sas_port_add(i32* %59)
  %61 = icmp ne i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @BUG_ON(i32 %62)
  %64 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %65 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  switch i32 %66, label %77 [
    i32 129, label %67
    i32 128, label %72
  ]

67:                                               ; preds = %48
  %68 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %69 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = call %struct.sas_rphy* @sas_expander_alloc(i32* %70, i32 129)
  store %struct.sas_rphy* %71, %struct.sas_rphy** %9, align 8
  br label %79

72:                                               ; preds = %48
  %73 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %74 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = call %struct.sas_rphy* @sas_expander_alloc(i32* %75, i32 128)
  store %struct.sas_rphy* %76, %struct.sas_rphy** %9, align 8
  br label %79

77:                                               ; preds = %48
  store %struct.sas_rphy* null, %struct.sas_rphy** %9, align 8
  %78 = call i32 (...) @BUG()
  br label %79

79:                                               ; preds = %77, %72, %67
  %80 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %81 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %80, i32 0, i32 3
  %82 = load %struct.asd_sas_port*, %struct.asd_sas_port** %81, align 8
  store %struct.asd_sas_port* %82, %struct.asd_sas_port** %11, align 8
  %83 = load %struct.sas_rphy*, %struct.sas_rphy** %9, align 8
  %84 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %85 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %84, i32 0, i32 11
  store %struct.sas_rphy* %83, %struct.sas_rphy** %85, align 8
  %86 = load %struct.sas_rphy*, %struct.sas_rphy** %9, align 8
  %87 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %86, i32 0, i32 0
  %88 = call i32 @get_device(i32* %87)
  %89 = load %struct.sas_rphy*, %struct.sas_rphy** %9, align 8
  %90 = call %struct.sas_expander_device* @rphy_to_expander_device(%struct.sas_rphy* %89)
  store %struct.sas_expander_device* %90, %struct.sas_expander_device** %10, align 8
  %91 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %92 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %95 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %97 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %96, i32 0, i32 10
  %98 = call i32 @kref_get(i32* %97)
  %99 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %100 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %101 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %100, i32 0, i32 9
  store %struct.domain_device* %99, %struct.domain_device** %101, align 8
  %102 = load %struct.asd_sas_port*, %struct.asd_sas_port** %11, align 8
  %103 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %104 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %103, i32 0, i32 3
  store %struct.asd_sas_port* %102, %struct.asd_sas_port** %104, align 8
  %105 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %106 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %109 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %108, i32 0, i32 8
  store i32 %107, i32* %109, align 8
  %110 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %111 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %114 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %113, i32 0, i32 7
  store i32 %112, i32* %114, align 4
  %115 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %116 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %119 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %122 = call i32 @memcpy(i32 %117, i32 %120, i32 %121)
  %123 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %124 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %127 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @sas_hash_addr(i32 %125, i32 %128)
  %130 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %131 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %132 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %133 = call i32 @sas_ex_get_linkrate(%struct.domain_device* %130, %struct.domain_device* %131, %struct.ex_phy* %132)
  %134 = load %struct.sas_expander_device*, %struct.sas_expander_device** %6, align 8
  %135 = getelementptr inbounds %struct.sas_expander_device, %struct.sas_expander_device* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, 1
  %138 = load %struct.sas_expander_device*, %struct.sas_expander_device** %10, align 8
  %139 = getelementptr inbounds %struct.sas_expander_device, %struct.sas_expander_device* %138, i32 0, i32 0
  store i64 %137, i64* %139, align 8
  %140 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %141 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %140, i32 0, i32 3
  %142 = load %struct.asd_sas_port*, %struct.asd_sas_port** %141, align 8
  %143 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.sas_expander_device*, %struct.sas_expander_device** %10, align 8
  %147 = getelementptr inbounds %struct.sas_expander_device, %struct.sas_expander_device* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @max(i32 %145, i64 %148)
  %150 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %151 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %150, i32 0, i32 3
  %152 = load %struct.asd_sas_port*, %struct.asd_sas_port** %151, align 8
  %153 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  store i32 %149, i32* %154, align 4
  %155 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %156 = call i32 @sas_init_dev(%struct.domain_device* %155)
  %157 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %158 = load %struct.sas_rphy*, %struct.sas_rphy** %9, align 8
  %159 = call i32 @sas_fill_in_rphy(%struct.domain_device* %157, %struct.sas_rphy* %158)
  %160 = load %struct.sas_rphy*, %struct.sas_rphy** %9, align 8
  %161 = call i32 @sas_rphy_add(%struct.sas_rphy* %160)
  %162 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %163 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %162, i32 0, i32 3
  %164 = load %struct.asd_sas_port*, %struct.asd_sas_port** %163, align 8
  %165 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %164, i32 0, i32 0
  %166 = call i32 @spin_lock_irq(i32* %165)
  %167 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %168 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %167, i32 0, i32 4
  %169 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %170 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %169, i32 0, i32 3
  %171 = load %struct.asd_sas_port*, %struct.asd_sas_port** %170, align 8
  %172 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %171, i32 0, i32 1
  %173 = call i32 @list_add_tail(i32* %168, i32* %172)
  %174 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %175 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %174, i32 0, i32 3
  %176 = load %struct.asd_sas_port*, %struct.asd_sas_port** %175, align 8
  %177 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %176, i32 0, i32 0
  %178 = call i32 @spin_unlock_irq(i32* %177)
  %179 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %180 = call i32 @sas_discover_expander(%struct.domain_device* %179)
  store i32 %180, i32* %12, align 4
  %181 = load i32, i32* %12, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %207

183:                                              ; preds = %79
  %184 = load %struct.sas_rphy*, %struct.sas_rphy** %9, align 8
  %185 = call i32 @sas_rphy_delete(%struct.sas_rphy* %184)
  %186 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %187 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %186, i32 0, i32 3
  %188 = load %struct.asd_sas_port*, %struct.asd_sas_port** %187, align 8
  %189 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %188, i32 0, i32 0
  %190 = call i32 @spin_lock_irq(i32* %189)
  %191 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %192 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %191, i32 0, i32 4
  %193 = call i32 @list_del(i32* %192)
  %194 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %195 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %194, i32 0, i32 3
  %196 = load %struct.asd_sas_port*, %struct.asd_sas_port** %195, align 8
  %197 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %196, i32 0, i32 0
  %198 = call i32 @spin_unlock_irq(i32* %197)
  %199 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %200 = call i32 @sas_put_device(%struct.domain_device* %199)
  %201 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %202 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %201, i32 0, i32 2
  %203 = load i32*, i32** %202, align 8
  %204 = call i32 @sas_port_delete(i32* %203)
  %205 = load %struct.ex_phy*, %struct.ex_phy** %7, align 8
  %206 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %205, i32 0, i32 2
  store i32* null, i32** %206, align 8
  store %struct.domain_device* null, %struct.domain_device** %3, align 8
  br label %215

207:                                              ; preds = %79
  %208 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %209 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %208, i32 0, i32 2
  %210 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %211 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 0
  %213 = call i32 @list_add_tail(i32* %209, i32* %212)
  %214 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  store %struct.domain_device* %214, %struct.domain_device** %3, align 8
  br label %215

215:                                              ; preds = %207, %183, %47, %29
  %216 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  ret %struct.domain_device* %216
}

declare dso_local %struct.sas_expander_device* @rphy_to_expander_device(%struct.sas_rphy*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @SAS_ADDR(i32) #1

declare dso_local %struct.domain_device* @sas_alloc_device(...) #1

declare dso_local i32* @sas_port_alloc(i32*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @sas_port_add(i32*) #1

declare dso_local %struct.sas_rphy* @sas_expander_alloc(i32*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @sas_hash_addr(i32, i32) #1

declare dso_local i32 @sas_ex_get_linkrate(%struct.domain_device*, %struct.domain_device*, %struct.ex_phy*) #1

declare dso_local i32 @max(i32, i64) #1

declare dso_local i32 @sas_init_dev(%struct.domain_device*) #1

declare dso_local i32 @sas_fill_in_rphy(%struct.domain_device*, %struct.sas_rphy*) #1

declare dso_local i32 @sas_rphy_add(%struct.sas_rphy*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @sas_discover_expander(%struct.domain_device*) #1

declare dso_local i32 @sas_rphy_delete(%struct.sas_rphy*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @sas_put_device(%struct.domain_device*) #1

declare dso_local i32 @sas_port_delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
