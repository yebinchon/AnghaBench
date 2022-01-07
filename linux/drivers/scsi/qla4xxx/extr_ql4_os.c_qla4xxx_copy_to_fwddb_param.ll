; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_copy_to_fwddb_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_copy_to_fwddb_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_bus_flash_session = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.iscsi_bus_flash_conn = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.dev_db_entry = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@BIT_11 = common dso_local global i32 0, align 4
@PORTAL_TYPE_IPV6 = common dso_local global i32 0, align 4
@BIT_8 = common dso_local global i32 0, align 4
@BIT_6 = common dso_local global i32 0, align 4
@BIT_4 = common dso_local global i32 0, align 4
@BIT_3 = common dso_local global i32 0, align 4
@BIT_13 = common dso_local global i32 0, align 4
@BIT_12 = common dso_local global i32 0, align 4
@BIT_10 = common dso_local global i32 0, align 4
@BIT_9 = common dso_local global i32 0, align 4
@BIT_7 = common dso_local global i32 0, align 4
@BIT_5 = common dso_local global i32 0, align 4
@BIT_1 = common dso_local global i32 0, align 4
@BIT_0 = common dso_local global i32 0, align 4
@BIT_2 = common dso_local global i32 0, align 4
@BYTE_UNITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_conn*, %struct.dev_db_entry*)* @qla4xxx_copy_to_fwddb_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4xxx_copy_to_fwddb_param(%struct.iscsi_bus_flash_session* %0, %struct.iscsi_bus_flash_conn* %1, %struct.dev_db_entry* %2) #0 {
  %4 = alloca %struct.iscsi_bus_flash_session*, align 8
  %5 = alloca %struct.iscsi_bus_flash_conn*, align 8
  %6 = alloca %struct.dev_db_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iscsi_bus_flash_session* %0, %struct.iscsi_bus_flash_session** %4, align 8
  store %struct.iscsi_bus_flash_conn* %1, %struct.iscsi_bus_flash_conn** %5, align 8
  store %struct.dev_db_entry* %2, %struct.dev_db_entry** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %10 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %9, i32 0, i32 31
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @le16_to_cpu(i8* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %5, align 8
  %14 = getelementptr inbounds %struct.iscsi_bus_flash_conn, %struct.iscsi_bus_flash_conn* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @BIT_11, align 4
  %18 = call i32 @SET_BITVAL(i32 %15, i32 %16, i32 %17)
  %19 = load %struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_session** %4, align 8
  %20 = getelementptr inbounds %struct.iscsi_bus_flash_session, %struct.iscsi_bus_flash_session* %19, i32 0, i32 25
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @PORTAL_TYPE_IPV6, align 4
  %23 = call i32 @strncmp(i32 %21, i32 %22, i32 4)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @BIT_8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  br label %34

29:                                               ; preds = %3
  %30 = load i32, i32* @BIT_8, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %29, %25
  %35 = load %struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_session** %4, align 8
  %36 = getelementptr inbounds %struct.iscsi_bus_flash_session, %struct.iscsi_bus_flash_session* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @BIT_6, align 4
  %40 = call i32 @SET_BITVAL(i32 %37, i32 %38, i32 %39)
  %41 = load %struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_session** %4, align 8
  %42 = getelementptr inbounds %struct.iscsi_bus_flash_session, %struct.iscsi_bus_flash_session* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @BIT_4, align 4
  %46 = call i32 @SET_BITVAL(i32 %43, i32 %44, i32 %45)
  %47 = load %struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_session** %4, align 8
  %48 = getelementptr inbounds %struct.iscsi_bus_flash_session, %struct.iscsi_bus_flash_session* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @BIT_3, align 4
  %52 = call i32 @SET_BITVAL(i32 %49, i32 %50, i32 %51)
  %53 = load i32, i32* %7, align 4
  %54 = call i8* @cpu_to_le16(i32 %53)
  %55 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %56 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %55, i32 0, i32 31
  store i8* %54, i8** %56, align 8
  %57 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %58 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %57, i32 0, i32 30
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @le16_to_cpu(i8* %59)
  store i32 %60, i32* %7, align 4
  %61 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %5, align 8
  %62 = getelementptr inbounds %struct.iscsi_bus_flash_conn, %struct.iscsi_bus_flash_conn* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @BIT_13, align 4
  %66 = call i32 @SET_BITVAL(i32 %63, i32 %64, i32 %65)
  %67 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %5, align 8
  %68 = getelementptr inbounds %struct.iscsi_bus_flash_conn, %struct.iscsi_bus_flash_conn* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @BIT_12, align 4
  %72 = call i32 @SET_BITVAL(i32 %69, i32 %70, i32 %71)
  %73 = load %struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_session** %4, align 8
  %74 = getelementptr inbounds %struct.iscsi_bus_flash_session, %struct.iscsi_bus_flash_session* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @BIT_11, align 4
  %78 = call i32 @SET_BITVAL(i32 %75, i32 %76, i32 %77)
  %79 = load %struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_session** %4, align 8
  %80 = getelementptr inbounds %struct.iscsi_bus_flash_session, %struct.iscsi_bus_flash_session* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @BIT_10, align 4
  %84 = call i32 @SET_BITVAL(i32 %81, i32 %82, i32 %83)
  %85 = load %struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_session** %4, align 8
  %86 = getelementptr inbounds %struct.iscsi_bus_flash_session, %struct.iscsi_bus_flash_session* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @BIT_9, align 4
  %90 = call i32 @SET_BITVAL(i32 %87, i32 %88, i32 %89)
  %91 = load %struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_session** %4, align 8
  %92 = getelementptr inbounds %struct.iscsi_bus_flash_session, %struct.iscsi_bus_flash_session* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @BIT_8, align 4
  %96 = call i32 @SET_BITVAL(i32 %93, i32 %94, i32 %95)
  %97 = load %struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_session** %4, align 8
  %98 = getelementptr inbounds %struct.iscsi_bus_flash_session, %struct.iscsi_bus_flash_session* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @BIT_7, align 4
  %102 = call i32 @SET_BITVAL(i32 %99, i32 %100, i32 %101)
  %103 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %5, align 8
  %104 = getelementptr inbounds %struct.iscsi_bus_flash_conn, %struct.iscsi_bus_flash_conn* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @BIT_6, align 4
  %108 = call i32 @SET_BITVAL(i32 %105, i32 %106, i32 %107)
  %109 = load %struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_session** %4, align 8
  %110 = getelementptr inbounds %struct.iscsi_bus_flash_session, %struct.iscsi_bus_flash_session* %109, i32 0, i32 8
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @BIT_5, align 4
  %114 = call i32 @SET_BITVAL(i32 %111, i32 %112, i32 %113)
  %115 = load %struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_session** %4, align 8
  %116 = getelementptr inbounds %struct.iscsi_bus_flash_session, %struct.iscsi_bus_flash_session* %115, i32 0, i32 9
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @BIT_4, align 4
  %120 = call i32 @SET_BITVAL(i32 %117, i32 %118, i32 %119)
  %121 = load %struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_session** %4, align 8
  %122 = getelementptr inbounds %struct.iscsi_bus_flash_session, %struct.iscsi_bus_flash_session* %121, i32 0, i32 10
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @BIT_3, align 4
  %126 = call i32 @SET_BITVAL(i32 %123, i32 %124, i32 %125)
  %127 = load %struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_session** %4, align 8
  %128 = getelementptr inbounds %struct.iscsi_bus_flash_session, %struct.iscsi_bus_flash_session* %127, i32 0, i32 11
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @BIT_1, align 4
  %131 = and i32 %129, %130
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @BIT_1, align 4
  %134 = call i32 @SET_BITVAL(i32 %131, i32 %132, i32 %133)
  %135 = load %struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_session** %4, align 8
  %136 = getelementptr inbounds %struct.iscsi_bus_flash_session, %struct.iscsi_bus_flash_session* %135, i32 0, i32 11
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @BIT_0, align 4
  %139 = and i32 %137, %138
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* @BIT_0, align 4
  %142 = call i32 @SET_BITVAL(i32 %139, i32 %140, i32 %141)
  %143 = load i32, i32* %7, align 4
  %144 = call i8* @cpu_to_le16(i32 %143)
  %145 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %146 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %145, i32 0, i32 30
  store i8* %144, i8** %146, align 8
  %147 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %148 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %147, i32 0, i32 29
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @le16_to_cpu(i8* %149)
  store i32 %150, i32* %7, align 4
  %151 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %5, align 8
  %152 = getelementptr inbounds %struct.iscsi_bus_flash_conn, %struct.iscsi_bus_flash_conn* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* @BIT_6, align 4
  %156 = call i32 @SET_BITVAL(i32 %153, i32 %154, i32 %155)
  %157 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %5, align 8
  %158 = getelementptr inbounds %struct.iscsi_bus_flash_conn, %struct.iscsi_bus_flash_conn* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* @BIT_5, align 4
  %162 = call i32 @SET_BITVAL(i32 %159, i32 %160, i32 %161)
  %163 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %5, align 8
  %164 = getelementptr inbounds %struct.iscsi_bus_flash_conn, %struct.iscsi_bus_flash_conn* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* @BIT_4, align 4
  %168 = call i32 @SET_BITVAL(i32 %165, i32 %166, i32 %167)
  %169 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %5, align 8
  %170 = getelementptr inbounds %struct.iscsi_bus_flash_conn, %struct.iscsi_bus_flash_conn* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @BIT_2, align 4
  %173 = and i32 %171, %172
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* @BIT_3, align 4
  %176 = call i32 @SET_BITVAL(i32 %173, i32 %174, i32 %175)
  %177 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %5, align 8
  %178 = getelementptr inbounds %struct.iscsi_bus_flash_conn, %struct.iscsi_bus_flash_conn* %177, i32 0, i32 7
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @BIT_1, align 4
  %181 = and i32 %179, %180
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* @BIT_2, align 4
  %184 = call i32 @SET_BITVAL(i32 %181, i32 %182, i32 %183)
  %185 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %5, align 8
  %186 = getelementptr inbounds %struct.iscsi_bus_flash_conn, %struct.iscsi_bus_flash_conn* %185, i32 0, i32 7
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @BIT_0, align 4
  %189 = and i32 %187, %188
  %190 = load i32, i32* %7, align 4
  %191 = load i32, i32* @BIT_1, align 4
  %192 = call i32 @SET_BITVAL(i32 %189, i32 %190, i32 %191)
  %193 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %5, align 8
  %194 = getelementptr inbounds %struct.iscsi_bus_flash_conn, %struct.iscsi_bus_flash_conn* %193, i32 0, i32 8
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* %7, align 4
  %197 = load i32, i32* @BIT_0, align 4
  %198 = call i32 @SET_BITVAL(i32 %195, i32 %196, i32 %197)
  %199 = load i32, i32* %7, align 4
  %200 = call i8* @cpu_to_le16(i32 %199)
  %201 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %202 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %201, i32 0, i32 29
  store i8* %200, i8** %202, align 8
  %203 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %204 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %203, i32 0, i32 28
  %205 = load i8*, i8** %204, align 8
  %206 = call i32 @le16_to_cpu(i8* %205)
  store i32 %206, i32* %7, align 4
  %207 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %5, align 8
  %208 = getelementptr inbounds %struct.iscsi_bus_flash_conn, %struct.iscsi_bus_flash_conn* %207, i32 0, i32 9
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %7, align 4
  %211 = load i32, i32* @BIT_4, align 4
  %212 = call i32 @SET_BITVAL(i32 %209, i32 %210, i32 %211)
  %213 = load i32, i32* %7, align 4
  %214 = call i8* @cpu_to_le16(i32 %213)
  %215 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %216 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %215, i32 0, i32 28
  store i8* %214, i8** %216, align 8
  %217 = load %struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_session** %4, align 8
  %218 = getelementptr inbounds %struct.iscsi_bus_flash_session, %struct.iscsi_bus_flash_session* %217, i32 0, i32 12
  %219 = load i32, i32* %218, align 8
  %220 = call i8* @cpu_to_le16(i32 %219)
  %221 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %222 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %221, i32 0, i32 27
  store i8* %220, i8** %222, align 8
  %223 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %5, align 8
  %224 = getelementptr inbounds %struct.iscsi_bus_flash_conn, %struct.iscsi_bus_flash_conn* %223, i32 0, i32 10
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @BYTE_UNITS, align 4
  %227 = sdiv i32 %225, %226
  %228 = call i8* @cpu_to_le16(i32 %227)
  %229 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %230 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %229, i32 0, i32 26
  store i8* %228, i8** %230, align 8
  %231 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %5, align 8
  %232 = getelementptr inbounds %struct.iscsi_bus_flash_conn, %struct.iscsi_bus_flash_conn* %231, i32 0, i32 11
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @BYTE_UNITS, align 4
  %235 = sdiv i32 %233, %234
  %236 = call i8* @cpu_to_le16(i32 %235)
  %237 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %238 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %237, i32 0, i32 25
  store i8* %236, i8** %238, align 8
  %239 = load %struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_session** %4, align 8
  %240 = getelementptr inbounds %struct.iscsi_bus_flash_session, %struct.iscsi_bus_flash_session* %239, i32 0, i32 13
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @BYTE_UNITS, align 4
  %243 = sdiv i32 %241, %242
  %244 = call i8* @cpu_to_le16(i32 %243)
  %245 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %246 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %245, i32 0, i32 24
  store i8* %244, i8** %246, align 8
  %247 = load %struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_session** %4, align 8
  %248 = getelementptr inbounds %struct.iscsi_bus_flash_session, %struct.iscsi_bus_flash_session* %247, i32 0, i32 14
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @BYTE_UNITS, align 4
  %251 = sdiv i32 %249, %250
  %252 = call i8* @cpu_to_le16(i32 %251)
  %253 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %254 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %253, i32 0, i32 23
  store i8* %252, i8** %254, align 8
  %255 = load %struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_session** %4, align 8
  %256 = getelementptr inbounds %struct.iscsi_bus_flash_session, %struct.iscsi_bus_flash_session* %255, i32 0, i32 15
  %257 = load i32, i32* %256, align 4
  %258 = call i8* @cpu_to_le16(i32 %257)
  %259 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %260 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %259, i32 0, i32 22
  store i8* %258, i8** %260, align 8
  %261 = load %struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_session** %4, align 8
  %262 = getelementptr inbounds %struct.iscsi_bus_flash_session, %struct.iscsi_bus_flash_session* %261, i32 0, i32 16
  %263 = load i32, i32* %262, align 8
  %264 = call i8* @cpu_to_le16(i32 %263)
  %265 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %266 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %265, i32 0, i32 21
  store i8* %264, i8** %266, align 8
  %267 = load %struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_session** %4, align 8
  %268 = getelementptr inbounds %struct.iscsi_bus_flash_session, %struct.iscsi_bus_flash_session* %267, i32 0, i32 17
  %269 = load i32, i32* %268, align 4
  %270 = call i8* @cpu_to_le16(i32 %269)
  %271 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %272 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %271, i32 0, i32 20
  store i8* %270, i8** %272, align 8
  %273 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %5, align 8
  %274 = getelementptr inbounds %struct.iscsi_bus_flash_conn, %struct.iscsi_bus_flash_conn* %273, i32 0, i32 12
  %275 = load i32, i32* %274, align 8
  %276 = call i8* @cpu_to_le16(i32 %275)
  %277 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %278 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %277, i32 0, i32 19
  store i8* %276, i8** %278, align 8
  %279 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %5, align 8
  %280 = getelementptr inbounds %struct.iscsi_bus_flash_conn, %struct.iscsi_bus_flash_conn* %279, i32 0, i32 25
  %281 = load i32, i32* %280, align 4
  %282 = call i8* @cpu_to_le32(i32 %281)
  %283 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %284 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %283, i32 0, i32 18
  store i8* %282, i8** %284, align 8
  %285 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %5, align 8
  %286 = getelementptr inbounds %struct.iscsi_bus_flash_conn, %struct.iscsi_bus_flash_conn* %285, i32 0, i32 24
  %287 = load i32, i32* %286, align 8
  %288 = call i8* @cpu_to_le32(i32 %287)
  %289 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %290 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %289, i32 0, i32 17
  store i8* %288, i8** %290, align 8
  %291 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %5, align 8
  %292 = getelementptr inbounds %struct.iscsi_bus_flash_conn, %struct.iscsi_bus_flash_conn* %291, i32 0, i32 13
  %293 = load i32, i32* %292, align 4
  %294 = call i8* @cpu_to_le16(i32 %293)
  %295 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %296 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %295, i32 0, i32 16
  store i8* %294, i8** %296, align 8
  %297 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %5, align 8
  %298 = getelementptr inbounds %struct.iscsi_bus_flash_conn, %struct.iscsi_bus_flash_conn* %297, i32 0, i32 14
  %299 = load i32, i32* %298, align 8
  %300 = call i8* @cpu_to_le16(i32 %299)
  %301 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %302 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %301, i32 0, i32 15
  store i8* %300, i8** %302, align 8
  %303 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %5, align 8
  %304 = getelementptr inbounds %struct.iscsi_bus_flash_conn, %struct.iscsi_bus_flash_conn* %303, i32 0, i32 15
  %305 = load i32, i32* %304, align 4
  %306 = call i8* @cpu_to_le16(i32 %305)
  %307 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %308 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %307, i32 0, i32 14
  store i8* %306, i8** %308, align 8
  %309 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %5, align 8
  %310 = getelementptr inbounds %struct.iscsi_bus_flash_conn, %struct.iscsi_bus_flash_conn* %309, i32 0, i32 23
  %311 = load i32, i32* %310, align 4
  %312 = call i8* @cpu_to_le32(i32 %311)
  %313 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %314 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %313, i32 0, i32 13
  store i8* %312, i8** %314, align 8
  %315 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %5, align 8
  %316 = getelementptr inbounds %struct.iscsi_bus_flash_conn, %struct.iscsi_bus_flash_conn* %315, i32 0, i32 22
  %317 = load i32, i32* %316, align 8
  %318 = call i8* @cpu_to_le32(i32 %317)
  %319 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %320 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %319, i32 0, i32 12
  store i8* %318, i8** %320, align 8
  %321 = load %struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_session** %4, align 8
  %322 = getelementptr inbounds %struct.iscsi_bus_flash_session, %struct.iscsi_bus_flash_session* %321, i32 0, i32 18
  %323 = load i32, i32* %322, align 8
  %324 = call i8* @cpu_to_le16(i32 %323)
  %325 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %326 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %325, i32 0, i32 11
  store i8* %324, i8** %326, align 8
  %327 = load %struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_session** %4, align 8
  %328 = getelementptr inbounds %struct.iscsi_bus_flash_session, %struct.iscsi_bus_flash_session* %327, i32 0, i32 19
  %329 = load i32, i32* %328, align 4
  %330 = call i8* @cpu_to_le16(i32 %329)
  %331 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %332 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %331, i32 0, i32 10
  store i8* %330, i8** %332, align 8
  %333 = load %struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_session** %4, align 8
  %334 = getelementptr inbounds %struct.iscsi_bus_flash_session, %struct.iscsi_bus_flash_session* %333, i32 0, i32 20
  %335 = load i32, i32* %334, align 8
  %336 = call i8* @cpu_to_le16(i32 %335)
  %337 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %338 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %337, i32 0, i32 9
  store i8* %336, i8** %338, align 8
  %339 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %5, align 8
  %340 = getelementptr inbounds %struct.iscsi_bus_flash_conn, %struct.iscsi_bus_flash_conn* %339, i32 0, i32 16
  %341 = load i32, i32* %340, align 8
  %342 = call i8* @cpu_to_le16(i32 %341)
  %343 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %344 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %343, i32 0, i32 8
  store i8* %342, i8** %344, align 8
  %345 = load %struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_session** %4, align 8
  %346 = getelementptr inbounds %struct.iscsi_bus_flash_session, %struct.iscsi_bus_flash_session* %345, i32 0, i32 21
  %347 = load i32, i32* %346, align 4
  %348 = call i8* @cpu_to_le16(i32 %347)
  %349 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %350 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %349, i32 0, i32 7
  store i8* %348, i8** %350, align 8
  %351 = load %struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_session** %4, align 8
  %352 = getelementptr inbounds %struct.iscsi_bus_flash_session, %struct.iscsi_bus_flash_session* %351, i32 0, i32 25
  %353 = load i32, i32* %352, align 8
  %354 = load i32, i32* @PORTAL_TYPE_IPV6, align 4
  %355 = call i32 @strncmp(i32 %353, i32 %354, i32 4)
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %363, label %357

357:                                              ; preds = %34
  %358 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %5, align 8
  %359 = getelementptr inbounds %struct.iscsi_bus_flash_conn, %struct.iscsi_bus_flash_conn* %358, i32 0, i32 21
  %360 = load i32, i32* %359, align 4
  %361 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %362 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %361, i32 0, i32 6
  store i32 %360, i32* %362, align 8
  br label %369

363:                                              ; preds = %34
  %364 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %5, align 8
  %365 = getelementptr inbounds %struct.iscsi_bus_flash_conn, %struct.iscsi_bus_flash_conn* %364, i32 0, i32 20
  %366 = load i32, i32* %365, align 8
  %367 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %368 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %367, i32 0, i32 6
  store i32 %366, i32* %368, align 8
  br label %369

369:                                              ; preds = %363, %357
  %370 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %5, align 8
  %371 = getelementptr inbounds %struct.iscsi_bus_flash_conn, %struct.iscsi_bus_flash_conn* %370, i32 0, i32 19
  %372 = load i64, i64* %371, align 8
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %374, label %382

374:                                              ; preds = %369
  %375 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %376 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %375, i32 0, i32 5
  %377 = load i32, i32* %376, align 4
  %378 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %5, align 8
  %379 = getelementptr inbounds %struct.iscsi_bus_flash_conn, %struct.iscsi_bus_flash_conn* %378, i32 0, i32 19
  %380 = load i64, i64* %379, align 8
  %381 = call i32 @memcpy(i32 %377, i64 %380, i32 4)
  br label %382

382:                                              ; preds = %374, %369
  %383 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %5, align 8
  %384 = getelementptr inbounds %struct.iscsi_bus_flash_conn, %struct.iscsi_bus_flash_conn* %383, i32 0, i32 18
  %385 = load i64, i64* %384, align 8
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %395

387:                                              ; preds = %382
  %388 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %389 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %388, i32 0, i32 4
  %390 = load i32, i32* %389, align 8
  %391 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %5, align 8
  %392 = getelementptr inbounds %struct.iscsi_bus_flash_conn, %struct.iscsi_bus_flash_conn* %391, i32 0, i32 18
  %393 = load i64, i64* %392, align 8
  %394 = call i32 @memcpy(i32 %390, i64 %393, i32 4)
  br label %395

395:                                              ; preds = %387, %382
  %396 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %5, align 8
  %397 = getelementptr inbounds %struct.iscsi_bus_flash_conn, %struct.iscsi_bus_flash_conn* %396, i32 0, i32 17
  %398 = load i64, i64* %397, align 8
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %408

400:                                              ; preds = %395
  %401 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %402 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %401, i32 0, i32 3
  %403 = load i32, i32* %402, align 4
  %404 = load %struct.iscsi_bus_flash_conn*, %struct.iscsi_bus_flash_conn** %5, align 8
  %405 = getelementptr inbounds %struct.iscsi_bus_flash_conn, %struct.iscsi_bus_flash_conn* %404, i32 0, i32 17
  %406 = load i64, i64* %405, align 8
  %407 = call i32 @memcpy(i32 %403, i64 %406, i32 4)
  br label %408

408:                                              ; preds = %400, %395
  %409 = load %struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_session** %4, align 8
  %410 = getelementptr inbounds %struct.iscsi_bus_flash_session, %struct.iscsi_bus_flash_session* %409, i32 0, i32 24
  %411 = load i64, i64* %410, align 8
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %421

413:                                              ; preds = %408
  %414 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %415 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %414, i32 0, i32 2
  %416 = load i32, i32* %415, align 8
  %417 = load %struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_session** %4, align 8
  %418 = getelementptr inbounds %struct.iscsi_bus_flash_session, %struct.iscsi_bus_flash_session* %417, i32 0, i32 24
  %419 = load i64, i64* %418, align 8
  %420 = call i32 @memcpy(i32 %416, i64 %419, i32 4)
  br label %421

421:                                              ; preds = %413, %408
  %422 = load %struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_session** %4, align 8
  %423 = getelementptr inbounds %struct.iscsi_bus_flash_session, %struct.iscsi_bus_flash_session* %422, i32 0, i32 23
  %424 = load i64, i64* %423, align 8
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %434

426:                                              ; preds = %421
  %427 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %428 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %427, i32 0, i32 1
  %429 = load i32, i32* %428, align 4
  %430 = load %struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_session** %4, align 8
  %431 = getelementptr inbounds %struct.iscsi_bus_flash_session, %struct.iscsi_bus_flash_session* %430, i32 0, i32 23
  %432 = load i64, i64* %431, align 8
  %433 = call i32 @memcpy(i32 %429, i64 %432, i32 4)
  br label %434

434:                                              ; preds = %426, %421
  %435 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %436 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 8
  %438 = load %struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_session** %4, align 8
  %439 = getelementptr inbounds %struct.iscsi_bus_flash_session, %struct.iscsi_bus_flash_session* %438, i32 0, i32 22
  %440 = load i32, i32* %439, align 8
  %441 = call i32 @COPY_ISID(i32 %437, i32 %440)
  %442 = load i32, i32* %8, align 4
  ret i32 %442
}

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i32 @SET_BITVAL(i32, i32, i32) #1

declare dso_local i32 @strncmp(i32, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

declare dso_local i32 @COPY_ISID(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
